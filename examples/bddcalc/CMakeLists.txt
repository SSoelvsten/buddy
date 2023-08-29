set(HEADERS
  hashtbl.h
  parser.h
  parser_.h
  slist.h
)

set(SOURCES
  hashtbl.cxx
  lexer.cxx
  parser.cxx
)

add_executable(bddcalc ${HEADERS} ${SOURCES})
target_link_libraries(bddcalc ${PROJECT_NAME})
set_target_properties(bddcalc PROPERTIES FOLDER "Examples")
