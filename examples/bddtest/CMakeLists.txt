add_executable(bddtest bddtest.cxx)
target_link_libraries(bddtest ${PROJECT_NAME})
set_target_properties(bddtest PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
