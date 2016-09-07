# Install script for directory: /home/benaissa/Téléchargements/player-3.0.2/config

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samplecfg")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/player/config" TYPE FILE FILES
    "/home/benaissa/Téléchargements/player-3.0.2/config/afsm.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/afsm.eps"
    "/home/benaissa/Téléchargements/player-3.0.2/config/amigobot.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/amigobot_tcp.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/amtecM5.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/b21r_rflex_lms200.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/cvcam.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/dummy.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/erratic.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/hokuyo_aist.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/iwspy.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/joystick.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/lms400.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/magellan.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/mapfile.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/mbicp.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/nomad.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/obot.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/passthrough.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/phidgetIFK.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/phidgetRFID.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/pioneer.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/pioneer_rs4euze.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/pointcloud3d.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/readlog.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/rfid.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/roomba.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/searchpattern.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/searchpattern_symbols.ps"
    "/home/benaissa/Téléchargements/player-3.0.2/config/segwayrmp.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/service_adv.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/simple.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/sphere.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/umass_ATRVJr.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/umass_ATRVMini.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/umass_reb.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/urglaser.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/vfh.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/wavefront.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/wbr914.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/writelog.cfg"
    "/home/benaissa/Téléchargements/player-3.0.2/config/wsn.cfg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samplecfg")

