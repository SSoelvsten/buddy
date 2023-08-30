cmake_minimum_required(VERSION 3.12)
project(buddy
  VERSION 2.4.0
  DESCRIPTION "BuDDy: A BDD Package"
  HOMEPAGE_URL "https://ssoelvsten.github.io/buddy/"
  LANGUAGES C CXX
)

# ============================================================================ #
# Settings
# ============================================================================ #

message(STATUS "CMake build configuration for ${PROJECT_NAME} ${PROJECT_VERSION}")

message(STATUS "  OS:                        ${CMAKE_SYSTEM_NAME}")
message(STATUS "  Compiler:                  ${CMAKE_CXX_COMPILER_ID} ${CMAKE_CXX_COMPILER_VERSION}")
message(VERBOSE " |  C Flags:                ${CMAKE_C_FLAGS}")
message(VERBOSE " |  CXX Flags:              ${CMAKE_CXX_FLAGS}")
message(VERBOSE " |  EXE Linker Flags:       ${CMAKE_EXE_LINKER_FLAGS}")

message(STATUS "  Library Options:")

option(BUDDY_STATS "Enable statistics for ${PROJECT_NAME}" OFF)
message(STATUS "  | Statistics:              ${BUDDY_STATS}")

option(BUDDY_DISABLE_WARNINGS "Disable warnings from ${PROJECT_NAME}" ON)
message(STATUS "  | Disable Warnings:        ${BUDDY_DISABLE_WARNINGS}")

option(BUDDY_EXAMPLES "Build BuDDy Examples" ON)
message(STATUS "  | Build Examples:          ${BUDDY_EXAMPLES}")

# ============================================================================ #
# Library Source
# ============================================================================ #
add_subdirectory(src)

# ============================================================================ #
# Examples
# ============================================================================ #
if(BUDDY_EXAMPLES)
  add_subdirectory(examples)
endif()
