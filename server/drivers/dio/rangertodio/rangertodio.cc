/*
 *  Player - One Hell of a Robot Server
 *  Copyright (C) 2000  Brian Gerkey et al.
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */
/////////////////////////////////////////////////////////////////////////////
//
// Desc: Ranger to dio converter
// Author: Paul Osmialowski
// Date: 07 Sep 2009
//
/////////////////////////////////////////////////////////////////////////////

/** @ingroup drivers */
/** @{ */
/** @defgroup driver_rangertodio rangertodio
 * @brief Ranger to dio converter

The rangertodio driver converts ranger scans to boolean values according to given
threshold value.

@par Compile-time dependencies

- none

@par Provides

- @ref interface_dio

@par Requires

- @ref interface_ranger
- optionally @ref interface_dio to send dio commands to

@par Configuration requests

- none

@par Configuration file options

- start_idx (integer)
  - Default: 0
  - Index of the first usable element in scans array
- end_idx (integer)
  - Default: -1
  - Index of the last usable element in scans array (-1 = the end of array)
  - end_idx should be greater or equal to start_idx
- bits (integer)
  - Default: 32
  - Number of bits to set (1..32)
- threshold (float)
  - Default: 1.0
  - Distance threshold
- turn_power_on
  - Default: 0
  - If set to 1 causes power request to be sent at setup time

@par Example

@verbatim
driver
(
  name "rangertodio"
  provides ["dio:0"]
  requires ["ranger:0"]
  start_idx 2
  end_idx 5
  bits 2
  threshold 1.5
)
@endverbatim

@author Paul Osmialowski

*/
/** @} */

#include <stddef.h> // for NULL and size_t
#include <string.h> // for memset()
#include <assert.h>
#include <libplayercore/playercore.h>

#define EPS 0.00000000001

class RangerToDio : public Driver
{
  public: RangerToDio(ConfigFile * cf, int section);
  public: virtual ~RangerToDio();
  public: virtual int Setup();
  public: virtual int Shutdown();
  public: virtual int ProcessMessage(QueuePointer & resp_queue, player_msghdr * hdr, void * data);
  private: player_devaddr_t dio_provided_addr;
  private: player_devaddr_t ranger_required_addr;
  private: player_devaddr_t dio_required_addr;
  private: Device * ranger_required_dev;
  private: Device * dio_required_dev;
  private: int use_dio_cmd;
  private: int start_idx;
  private: int end_idx;
  private: size_t bits;
  private: double threshold;
  private: int turn_power_on;
  private: enum { idle = 0, wait_power = 1 } state;
  private: static int process(double * ranges, int first, int last, double threshold);
};

RangerToDio::RangerToDio(ConfigFile * cf, int section) : Driver(cf, section, true, PLAYER_MSGQUEUE_DEFAULT_MAXLEN)
{
  memset(&(this->dio_provided_addr), 0, sizeof(player_devaddr_t));
  memset(&(this->ranger_required_addr), 0, sizeof(player_devaddr_t));
  memset(&(this->dio_required_addr), 0, sizeof(player_devaddr_t));
  this->ranger_required_dev = NULL;
  this->dio_required_dev = NULL;
  this->use_dio_cmd = 0;
  this->start_idx = 0;
  this->end_idx = 0;
  this->bits = 0;
  this->threshold = 0.0;
  this->turn_power_on = 0;
  this->state = idle;
  if (cf->ReadDeviceAddr(&(this->dio_provided_addr), section, "provides", PLAYER_DIO_CODE, -1, NULL))
  {
    PLAYER_ERROR("cannot provide dio device");
    this->SetError(-1);
    return;
  }
  if (this->AddInterface(this->dio_provided_addr))
  {
    this->SetError(-1);
    return;
  }
  if (cf->ReadDeviceAddr(&(this->ranger_required_addr), section, "requires", PLAYER_RANGER_CODE, -1, NULL))
  {
    PLAYER_ERROR("cannot require ranger device");
    this->SetError(-1);
    return;    
  }
  if (cf->ReadDeviceAddr(&(this->dio_required_addr), section, "requires", PLAYER_DIO_CODE, -1, NULL))
  {
    PLAYER_WARN("dio device not required");
    this->use_dio_cmd = 0;
  } else
  {
    PLAYER_WARN("commands will be sent to subscribed dio device");
    this->use_dio_cmd = !0;
  }
  this->start_idx = cf->ReadInt(section, "start_idx", 0);
  if ((this->start_idx) < 0)
  {
    PLAYER_ERROR("invalid start_idx value");
    this->SetError(-1);
    return;
  }
  this->end_idx = cf->ReadInt(section, "end_idx", -1);
  if (!(((this->end_idx) == -1) || (this->end_idx >= this->start_idx)))
  {
    PLAYER_ERROR("invalid end_idx value");
    this->SetError(-1);
    return;
  }
  this->bits = static_cast<size_t>(cf->ReadInt(section, "bits", 32));
  if (((this->bits) < 1) || ((this->bits) > 32))
  {
    PLAYER_ERROR("invalid number of bits");
    this->SetError(-1);
    return;
  }
  this->threshold = cf->ReadFloat(section, "threshold", 1.0);
  if ((this->threshold) < EPS)
  {
    PLAYER_ERROR("invalid threshold value");
    this->SetError(-1);
    return;    
  }
  this->turn_power_on = static_cast<size_t>(cf->ReadInt(section, "turn_power_on", 0));
}

RangerToDio::~RangerToDio() { }

int RangerToDio::Setup()
{
  player_ranger_power_config_t power;

  this->state = idle;
  this->ranger_required_dev = deviceTable->GetDevice(this->ranger_required_addr);
  if (!(this->ranger_required_dev)) return -1;
  if (this->ranger_required_dev->Subscribe(this->InQueue))
  {
    this->ranger_required_dev = NULL;
    return -1;
  }
  if (this->turn_power_on)
  {
    memset(&power, 0, sizeof power);
    power.state = !0;
    PLAYER_WARN("turning ON the power");
    this->ranger_required_dev->PutMsg(this->InQueue, PLAYER_MSGTYPE_REQ, PLAYER_RANGER_REQ_POWER, reinterpret_cast<void *>(&power), 0, NULL);
    this->state = wait_power;
  }
  if (this->use_dio_cmd)
  {
    if (Device::MatchDeviceAddress(this->dio_required_addr, this->dio_provided_addr))
    {
      PLAYER_ERROR("attempt to subscribe to self");
      if (this->ranger_required_dev) this->ranger_required_dev->Unsubscribe(this->InQueue);
      this->ranger_required_dev = NULL;
      return -1;
    }
    this->dio_required_dev = deviceTable->GetDevice(this->dio_required_addr);
    if (!(this->dio_required_dev))
    {
      if (this->ranger_required_dev) this->ranger_required_dev->Unsubscribe(this->InQueue);
      this->ranger_required_dev = NULL;
      return -1;
    }
    if (this->dio_required_dev->Subscribe(this->InQueue))
    {
      this->dio_required_dev = NULL;
      if (this->ranger_required_dev) this->ranger_required_dev->Unsubscribe(this->InQueue);
      this->ranger_required_dev = NULL;
      return -1;
    }
  }
  return 0;
}

int RangerToDio::Shutdown()
{
  if (this->dio_required_dev) this->dio_required_dev->Unsubscribe(this->InQueue);
  this->dio_required_dev = NULL;
  if (this->ranger_required_dev) this->ranger_required_dev->Unsubscribe(this->InQueue);
  this->ranger_required_dev = NULL;
  return 0;
}

int RangerToDio::process(double * ranges, int first, int last, double threshold)
{
  int count = 0;
  int num = (last - first) + 1;
  int i;

  assert(last >= first);
  assert(num > 0);
  for (i = first; i <= last; i++)
  {
    if (ranges[i] < threshold) count++;
  }
  assert(count <= num);
  return !((static_cast<double>(count) - (static_cast<double>(num) / 2.0)) < 0.0);
}

int RangerToDio::ProcessMessage(QueuePointer & resp_queue, player_msghdr * hdr, void * data)
{
  player_dio_data_t dio_data;
  player_dio_cmd_t dio_cmd;
  player_ranger_data_range_t * ranges;
  double x, d;
  int size;
  int i;
  int first, last, endidx;
  uint32_t u;

  assert(hdr);
  if (Message::MatchMessage(hdr, PLAYER_MSGTYPE_RESP_NACK, -1, this->ranger_required_addr))
  {
    if ((this->state) == idle) PLAYER_ERROR("state not idle");
    PLAYER_ERROR("request not accepted by formation device");
    this->state = idle;
    return 0;
  }
  if (Message::MatchMessage(hdr, PLAYER_MSGTYPE_RESP_ACK, -1, this->ranger_required_addr))
  {
    switch (this->state)
    {
    case idle:
      PLAYER_ERROR("invalid state");
      break;
    case wait_power:
      if ((hdr->subtype) != PLAYER_RANGER_REQ_POWER) PLAYER_ERROR("not a PLAYER_RANGER_REQ_POWER subtype");
      else PLAYER_WARN("power turned on");
      this->state = idle;
      break;
    default:
      assert(!"unknown state");
    }
    return 0;
  }
  if (Message::MatchMessage(hdr, PLAYER_MSGTYPE_DATA, PLAYER_RANGER_DATA_RANGE, this->ranger_required_addr))
  {
    assert(data);
    ranges = reinterpret_cast<player_ranger_data_range_t *>(data);
    assert(ranges);
    endidx = -1;
    if ((this->end_idx) == -1)
    {
      if ((static_cast<int>(ranges->ranges_count)) <= (this->start_idx))
      {
        PLAYER_WARN("Not enough data");
        return -1;
      }
      endidx = static_cast<int>(ranges->ranges_count) - 1;
    } else
    {
      if ((static_cast<int>(ranges->ranges_count)) <= (this->end_idx))
      {
        PLAYER_WARN("Not enough data");
        return -1;
      }
      endidx = this->end_idx;
    }
    assert(endidx >= 0);
    if (endidx < (this->start_idx))
    {
      PLAYER_WARN("Wrong indices");
      return -1;
    }
    size = (endidx - this->start_idx) + 1;
    assert(size > 0);
    memset(&dio_data, 0, sizeof dio_data);
    memset(&dio_cmd, 0, sizeof dio_cmd);
    assert(this->bits > 0);
    dio_data.count = this->bits;
    dio_data.bits = 0;
    dio_cmd.count = this->bits;
    dio_cmd.digout = 0;
    x = (static_cast<double>(size)) / (static_cast<double>(this->bits));
    d = 0.0;
    u = 1;
    for (i = 0; i < static_cast<int>(this->bits); i++)
    {
      first = static_cast<int>(d);
      d += x;
      last = static_cast<int>(d);
      if (d > (static_cast<double>(last))) last++;
      last--;
      if (last == size)
      {
        assert((i + 1) == static_cast<int>(this->bits));
        last--;
      }
      assert((first >=0) && (first < size));
      assert((last >= 0) && (last < size));
      assert(last >= first);
      assert((this->start_idx + first) < (static_cast<int>(ranges->ranges_count)));
      assert((this->start_idx + last) < (static_cast<int>(ranges->ranges_count)));
      if (RangerToDio::process(ranges->ranges, this->start_idx + first, this->start_idx + last, this->threshold))
      {
        dio_data.bits |= u;
        dio_cmd.digout |= u;
      }
      u <<= 1;
    }
    this->Publish(this->dio_provided_addr,
                  PLAYER_MSGTYPE_DATA, PLAYER_DIO_DATA_VALUES,
                  reinterpret_cast<void *>(&dio_data), 0, NULL, true); // copy = true, do not dispose data placed on local stack!
    if (this->use_dio_cmd)
    {
      this->dio_required_dev->PutMsg(this->InQueue, PLAYER_MSGTYPE_CMD, PLAYER_DIO_CMD_VALUES, reinterpret_cast<void *>(&dio_cmd), 0, NULL);
    }
    return 0;
  }
  // handle other ranger data
  if (Message::MatchMessage(hdr, PLAYER_MSGTYPE_DATA, -1, this->ranger_required_addr))
  {
    if (!data)
    {
      PLAYER_ERROR("NULL other ranger data");
      return -1;
    }
    return 0;
  }
  if (this->use_dio_cmd)
  {
    if (Message::MatchMessage(hdr, PLAYER_MSGTYPE_DATA, PLAYER_DIO_DATA_VALUES, this->dio_required_addr))
    {
      assert(data);
      return 0;
    }
  }
  return -1;
}

// A factory creation function, declared outside of the class so that it
// can be invoked without any object context (alternatively, you can
// declare it static in the class).  In this function, we create and return
// (as a generic Driver*) a pointer to a new instance of this driver.
Driver * RangerToDio_Init(ConfigFile * cf, int section)
{
  // Create and return a new instance of this driver
  return reinterpret_cast<Driver *>(new RangerToDio(cf, section));
}

// A driver registration function, again declared outside of the class so
// that it can be invoked without object context.  In this function, we add
// the driver into the given driver table, indicating which interface the
// driver can support and how to create a driver instance.
void rangertodio_Register(DriverTable * table)
{
  table->AddDriver("rangertodio", RangerToDio_Init);
}
