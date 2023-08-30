add_executable(queen queen.cxx)
target_link_libraries(queen ${PROJECT_NAME})
set_target_properties(queen PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
