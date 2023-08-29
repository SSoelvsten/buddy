add_executable(fdd fdd.cxx)
target_link_libraries(fdd ${PROJECT_NAME})
set_target_properties(fdd PROPERTIES FOLDER "Examples")
