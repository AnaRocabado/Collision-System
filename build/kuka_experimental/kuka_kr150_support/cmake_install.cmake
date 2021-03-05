# Install script for directory: /home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ana/collision_system_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ana/collision_system_ws/build/kuka_experimental/kuka_kr150_support/catkin_generated/installspace/kuka_kr150_support.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_kr150_support/cmake" TYPE FILE FILES
    "/home/ana/collision_system_ws/build/kuka_experimental/kuka_kr150_support/catkin_generated/installspace/kuka_kr150_supportConfig.cmake"
    "/home/ana/collision_system_ws/build/kuka_experimental/kuka_kr150_support/catkin_generated/installspace/kuka_kr150_supportConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_kr150_support" TYPE FILE FILES "/home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_kr150_support" TYPE DIRECTORY FILES
    "/home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support/config"
    "/home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support/launch"
    "/home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support/meshes"
    "/home/ana/collision_system_ws/src/kuka_experimental/kuka_kr150_support/urdf"
    )
endif()

