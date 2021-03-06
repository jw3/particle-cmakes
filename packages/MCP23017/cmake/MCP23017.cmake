set(MCP23017 ${CONAN_MCP23017_ROOT})

file(GLOB SOURCE_FILES ${MCP23017}/src/*)

add_library(MCP23017 STATIC ${SOURCE_FILES})
target_include_directories(MCP23017 PRIVATE ${MCP23017}/include ${PLATFORM_CXX_INCLUDES})
target_compile_options(MCP23017 PRIVATE "$<$<CONFIG:ALL>:${PLATFORM_CXX_FLAGS}>")
target_compile_definitions(MCP23017 PRIVATE ${PLATFORM_CXX_DEFS})
