macro(make_named_module NAME)
    add_library(${NAME} ${ARGN})
endmacro()
macro(make_module)
    make_named_module(${PROJECT_NAME} ${ARGN})
endmacro()
