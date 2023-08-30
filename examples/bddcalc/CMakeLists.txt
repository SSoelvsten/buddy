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

configure_file(example.cal example.cal COPYONLY)
configure_file(examples/c432.cal examples/c432.cal COPYONLY)
configure_file(examples/c499.cal examples/c499.cal COPYONLY)
configure_file(examples/c1355.cal examples/c1355.cal COPYONLY)
configure_file(examples/c1908.cal examples/c1908.cal COPYONLY)
configure_file(examples/c2670.cal examples/c2670.cal COPYONLY)
configure_file(examples/c3540.cal examples/c3540.cal COPYONLY)

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
