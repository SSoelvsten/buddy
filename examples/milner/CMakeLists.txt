add_executable(milner milner.cxx)
target_link_libraries(milner ${PROJECT_NAME})
set_target_properties(milner PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
