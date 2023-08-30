add_executable(money money.cxx)
target_link_libraries(money ${PROJECT_NAME})
set_target_properties(money PROPERTIES FOLDER "Examples")

configure_file(expected expected COPYONLY)
configure_file(runtest runtest COPYONLY)
