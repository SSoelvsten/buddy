add_executable(adder adder.cxx)
target_link_libraries(adder ${PROJECT_NAME})
set_target_properties(adder PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
