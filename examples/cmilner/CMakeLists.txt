add_executable(cmilner cmilner.c)
target_link_libraries(cmilner ${PROJECT_NAME})
set_target_properties(cmilner PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
