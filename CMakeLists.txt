cmake_minimum_required(VERSION 3.8)
project(ugrdv_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

set(DEPENDENCIES
  "ament_cmake"
  "rosidl_default_generators"
  "geometry_msgs"
  "ackermann_msgs"
)

set(MSG_FILES
  "msg/CarRequest.msg"
  "msg/Cone3d.msg"
  "msg/Cone3dArray.msg"
  "msg/DriveRequest.msg"
  "msg/Meta.msg"
  "msg/VCUStatus.msg"
  "msg/BrakeStatus.msg"
  "msg/WheelSpeedsStatus.msg"
  "msg/WheelPulseRatesStatus.msg"
)

foreach(dependency ${DEPENDENCIES})
  find_package(${dependency} REQUIRED)
endforeach()

rosidl_generate_interfaces(
  ${PROJECT_NAME}
  ${MSG_FILES}
  DEPENDENCIES ${DEPENDENCIES}
)
ament_export_dependencies(rosidl_default_runtime)

ament_package()
