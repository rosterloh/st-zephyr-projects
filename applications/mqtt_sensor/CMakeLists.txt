cmake_minimum_required(VERSION 3.13.1)

find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
project(mqtt_sensor VERSION 1.0.0)
target_compile_definitions(app PRIVATE
  PROJECT_NAME=${PROJECT_NAME}
  FW_VERSION_MAJOR=${CMAKE_PROJECT_VERSION_MAJOR}
  FW_VERSION_MINOR=${CMAKE_PROJECT_VERSION_MINOR}
  FW_VERSION_PATCH=${CMAKE_PROJECT_VERSION_PATCH}
)

target_sources(app PRIVATE src/main.c)
zephyr_include_directories(src)
