/*
 *  Player - One Hell of a Robot Server
 *  Copyright (C) Andrew Howard 2003
 *
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
/*
 * $Id: test_position2d_holdsub.cc 8106 2009-07-23 19:14:37Z thjc $
 *
 * a test for the C++ Position2DProxy
 */

#include "test.h"
#if !defined (WIN32)
  #include <unistd.h>
#endif
#include <math.h>

using namespace PlayerCc;

int
test_position2d_holdsubscribe(PlayerClient* client, int index)
{
  TEST("position2d");
  Position2dProxy p2d(client,index);

  // wait for P2OS to start up
  for(int i=0;i<20;i++)
    client->Read();

  while(1)
  {
    client->Read();
    std::cerr << p2d << std::endl;
  }

  return -1;
}


 	  	 
