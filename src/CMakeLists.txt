set_property(GLOBAL PROPERTY USE_FOLDERS On)

# ============================================================================ #
# Move CMake version number into BuDDy's source code
# ============================================================================ #
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/config.h.in
               ${CMAKE_CURRENT_SOURCE_DIR}/config.h)

if (BUDDY_STATS)
  file(APPEND config.h "\n/* BUDDY_STATS */\n")
  file(APPEND config.h "#define SWAPCOUNT 1\n")
  file(APPEND config.h "#define CACHESTATS 1\n")
endif (BUDDY_STATS)

# ============================================================================ #
# Sources and Headers
# ============================================================================ #
set(HEADERS
  config.h
  bdd.h
  fdd.h
  bvec.h
  bddtree.h
  imatrix.h
  cache.h
  kernel.h
  prime.h
)

set(SOURCES
 bddio.c
 bddop.c
 bvec.c
 cache.c
 cppext.cxx
 fdd.c
 imatrix.c
 kernel.c
 pairs.c
 prime.c
 reorder.c
 tree.c
)

# ============================================================================ #
# Combine sources into the BuDDy library
#
# TODO: Compile as a Shared library
# ============================================================================ #
add_library(${PROJECT_NAME} STATIC ${HEADERS} ${SOURCES})

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
                                                  ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(${PROJECT_NAME} PROPERTIES
  # Language settings
  LINKER_LANGUAGE CXX
  C_STANDARD 11
  C_STANDARD_REQUIRED ON
  CXX_STANDARD 11
  CXX_STANDARD_REQUIRED ON
  CXX_VISIBILITY_PRESET default

  # Visual Studio
  FOLDER ${PROJECT_NAME}

  # Project Information
  VERSION ${PROJECT_VERSION}
)

target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_11)

# ============================================================================ #
# Special compiler settings
# ============================================================================ #
if(WIN32)
  target_compile_definitions(${PROJECT_NAME} PRIVATE _CRT_SECURE_NO_WARNINGS)
endif()

if(BUDDY_DISABLE_WARNINGS)
  if(MSVC)
    # Force to always compile with W4
    if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
      string(REGEX REPLACE "/W[0-4]" "/W0" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
    else()
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W0")
    endif()
  elseif(CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
    # Update if necessary
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")
  endif()
endif()
