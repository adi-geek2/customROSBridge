# Install script for directory: /home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_infrastructure

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
  include("/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_infrastructure/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_infrastructure/catkin_generated/installspace/carla_infrastructure.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_infrastructure/cmake" TYPE FILE FILES
    "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_infrastructure/catkin_generated/installspace/carla_infrastructureConfig.cmake"
    "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_infrastructure/catkin_generated/installspace/carla_infrastructureConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_infrastructure" TYPE FILE FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_infrastructure/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/carla_infrastructure" TYPE PROGRAM FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_infrastructure/catkin_generated/installspace/carla_infrastructure.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_infrastructure/launch" TYPE DIRECTORY FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_infrastructure/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_infrastructure/config" TYPE DIRECTORY FILES "/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_infrastructure/config/")
endif()

