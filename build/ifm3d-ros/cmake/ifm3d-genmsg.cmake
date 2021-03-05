# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ifm3d: 1 messages, 6 services")

set(MSG_I_FLAGS "-Iifm3d:/home/ana/collision_system_ws/src/ifm3d-ros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ifm3d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" ""
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" ""
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" ""
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" ""
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" ""
)

get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_custom_target(_ifm3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ifm3d" "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)

### Generating Services
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)
_generate_srv_cpp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
)

### Generating Module File
_generate_module_cpp(ifm3d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ifm3d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ifm3d_generate_messages ifm3d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_cpp _ifm3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ifm3d_gencpp)
add_dependencies(ifm3d_gencpp ifm3d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ifm3d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)

### Generating Services
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)
_generate_srv_eus(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
)

### Generating Module File
_generate_module_eus(ifm3d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ifm3d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ifm3d_generate_messages ifm3d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_eus _ifm3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ifm3d_geneus)
add_dependencies(ifm3d_geneus ifm3d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ifm3d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)

### Generating Services
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)
_generate_srv_lisp(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
)

### Generating Module File
_generate_module_lisp(ifm3d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ifm3d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ifm3d_generate_messages ifm3d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_lisp _ifm3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ifm3d_genlisp)
add_dependencies(ifm3d_genlisp ifm3d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ifm3d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)

### Generating Services
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)
_generate_srv_nodejs(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
)

### Generating Module File
_generate_module_nodejs(ifm3d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ifm3d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ifm3d_generate_messages ifm3d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_nodejs _ifm3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ifm3d_gennodejs)
add_dependencies(ifm3d_gennodejs ifm3d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ifm3d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)

### Generating Services
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)
_generate_srv_py(ifm3d
  "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
)

### Generating Module File
_generate_module_py(ifm3d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ifm3d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ifm3d_generate_messages ifm3d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOff.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Trigger.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/msg/Extrinsics.msg" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Dump.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SyncClocks.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/SoftOn.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ana/collision_system_ws/src/ifm3d-ros/srv/Config.srv" NAME_WE)
add_dependencies(ifm3d_generate_messages_py _ifm3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ifm3d_genpy)
add_dependencies(ifm3d_genpy ifm3d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ifm3d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ifm3d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ifm3d_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ifm3d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ifm3d_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ifm3d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ifm3d_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ifm3d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ifm3d_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ifm3d/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ifm3d_generate_messages_py std_msgs_generate_messages_py)
endif()
