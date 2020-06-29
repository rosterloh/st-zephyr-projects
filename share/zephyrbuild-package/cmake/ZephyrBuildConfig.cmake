# Relative directory of Projects dir as seen from ZephyrExtension package file
set(PROJECTS_RELATIVE_DIR "../../..")

# Set the current PROJECTS_DIR
# The use of get_filename_component ensures that the final path variable will not contain `../..`.
get_filename_component(PROJECTS_DIR ${CMAKE_CURRENT_LIST_DIR}/${PROJECTS_RELATIVE_DIR} ABSOLUTE)

if(NOT NO_BOILERPLATE)
    include(${PROJECTS_DIR}/cmake/boilerplate.cmake NO_POLICY_SCOPE)
endif()