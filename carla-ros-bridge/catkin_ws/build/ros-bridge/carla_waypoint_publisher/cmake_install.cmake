# Install script for directory: /home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_waypoint_publisher

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/adeshpand/carla-ros-bridge/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_waypoint_publisher/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_waypoint_publisher/catkin_generated/installspace/carla_waypoint_publisher.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_publisher/cmake" TYPE FILE FILES
    "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_waypoint_publisher/catkin_generated/installspace/carla_waypoint_publisherConfig.cmake"
    "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_waypoint_publisher/catkin_generated/installspace/carla_waypoint_publisherConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_publisher" TYPE FILE FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_waypoint_publisher/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/carla_waypoint_publisher" TYPE PROGRAM FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_waypoint_publisher/catkin_generated/installspace/carla_waypoint_publisher.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_waypoint_publisher/launch" TYPE DIRECTORY FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_waypoint_publisher/launch/")
endif()

