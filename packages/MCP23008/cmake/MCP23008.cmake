set(MCP23008 ${CONAN_MCP23008_ROOT})

file(GLOB SOURCE_FILES ${MCP23008}/src/*)

add_library(MCP23008 STATIC ${SOURCE_FILES})
target_include_directories(MCP23008 PRIVATE ${MCP23008}/include ${PLATFORM_CXX_INCLUDES})
target_compile_options(MCP23008 PRIVATE "$<$<CONFIG:ALL>:${PLATFORM_CXX_FLAGS}>")
target_compile_definitions(MCP23008 PRIVATE ${PLATFORM_CXX_DEFS})