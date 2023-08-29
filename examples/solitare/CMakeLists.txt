add_executable(solitare solitare.cxx)
target_link_libraries(solitare ${PROJECT_NAME})
set_target_properties(solitare PROPERTIES FOLDER "Examples")
