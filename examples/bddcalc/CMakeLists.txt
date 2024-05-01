set(HEADERS
  hashtbl.h
  parser.h
  parser_.h
  slist.h
)

set(SOURCES
  hashtbl.cxx
)

find_package(FLEX)
find_package(BISON)

FLEX_TARGET(BDDCALC lexer.lxx ${CMAKE_CURRENT_BINARY_DIR}/lexer.cxx)
BISON_TARGET(BDDCALC parser.yxx ${CMAKE_CURRENT_BINARY_DIR}/parser.cxx
             DEFINES_FILE ${CMAKE_CURRENT_BINARY_DIR}/parser.h)

add_executable(bddcalc ${HEADERS} ${SOURCES} ${FLEX_BDDCALC_OUTPUTS} ${BISON_BDDCALC_OUTPUTS})
target_link_libraries(bddcalc ${PROJECT_NAME})
# The following is needed since lexer.cxx and parser.cxx include files of this
# directory but are located in the build directory.
target_include_directories(bddcalc PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
set_target_properties(bddcalc PROPERTIES FOLDER "Examples")

configure_file(runtest.in runtest)
