# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hello_test: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hello_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_custom_target(_hello_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hello_test" "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hello_test
  "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_test
)

### Generating Module File
_generate_module_cpp(hello_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hello_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hello_test_generate_messages hello_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_dependencies(hello_test_generate_messages_cpp _hello_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_test_gencpp)
add_dependencies(hello_test_gencpp hello_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_test_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(hello_test
  "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_test
)

### Generating Module File
_generate_module_eus(hello_test
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_test
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hello_test_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hello_test_generate_messages hello_test_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_dependencies(hello_test_generate_messages_eus _hello_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_test_geneus)
add_dependencies(hello_test_geneus hello_test_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_test_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hello_test
  "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_test
)

### Generating Module File
_generate_module_lisp(hello_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hello_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hello_test_generate_messages hello_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_dependencies(hello_test_generate_messages_lisp _hello_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_test_genlisp)
add_dependencies(hello_test_genlisp hello_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_test_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(hello_test
  "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_test
)

### Generating Module File
_generate_module_nodejs(hello_test
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_test
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hello_test_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hello_test_generate_messages hello_test_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_dependencies(hello_test_generate_messages_nodejs _hello_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_test_gennodejs)
add_dependencies(hello_test_gennodejs hello_test_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_test_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hello_test
  "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_test
)

### Generating Module File
_generate_module_py(hello_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hello_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hello_test_generate_messages hello_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kevin/test/quickstart_ws/src/hello_test/srv/LocalizePart.srv" NAME_WE)
add_dependencies(hello_test_generate_messages_py _hello_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hello_test_genpy)
add_dependencies(hello_test_genpy hello_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hello_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hello_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hello_test_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hello_test
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hello_test_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hello_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hello_test_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hello_test
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hello_test_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hello_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hello_test_generate_messages_py geometry_msgs_generate_messages_py)
endif()
