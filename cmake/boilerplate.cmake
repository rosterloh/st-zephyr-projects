# This boilerplate is automatically included through ZephyrBuildConfig.cmake, found in
# ${PROJECTS_DIR}/share/zephyrbuild-package/cmake/ZephyrBuildConfig.cmake

if(NOT BOARD)
        set(BOARD $ENV{BOARD})
endif()

# Check if selected board is supported.
if(DEFINED PROJECTS_SUPPORTED_BOARDS)
        if(NOT BOARD IN_LIST PROJECTS_SUPPORTED_BOARDS)
                message(FATAL_ERROR "board ${BOARD} is not supported")
        endif()
endif()

# Check if selected build type is supported.
if(DEFINED PROJECTS_SUPPORTED_BUILD_TYPES)
        if(NOT CMAKE_BUILD_TYPE IN_LIST PROJECTS_SUPPORTED_BUILD_TYPES)
                message(FATAL_ERROR "${CMAKE_BUILD_TYPE} variant is not supported")
        endif()
endif()

# Add PROJECTS_DIR as a BOARD_ROOT in case the board is in PROJECTS_DIR
list(APPEND BOARD_ROOT ${PROJECTS_DIR})

# Add PROJECTS_DIR as a DTS_ROOT to include projects/dts
list(APPEND DTS_ROOT ${PROJECTS_DIR})