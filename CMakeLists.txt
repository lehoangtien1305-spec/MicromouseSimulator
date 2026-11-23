cmake_minimum_required(VERSION 3.16)

project(MicromouseSimulator
    VERSION 0.1.0
    DESCRIPTION "Micromouse 2D Simulation Project"
    LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(MicromouseSimulator
    src/main.cpp
    src/app/Application.cpp
)

target_include_directories(MicromouseSimulator
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)

if(MSVC)
    target_compile_options(MicromouseSimulator PRIVATE /W4)
else()
    target_compile_options(MicromouseSimulator PRIVATE
        -Wall
        -Wextra
        -Wpedantic
    )
endif()

# Kiem thu tu dong bo sung, khong thay the minh chung kiem thu tren may nhom.
include(CTest)
if(BUILD_TESTING)
    add_test(NAME TC03_ApplicationStarts COMMAND MicromouseSimulator)
    set_tests_properties(TC03_ApplicationStarts PROPERTIES
        PASS_REGULAR_EXPRESSION "Initializing Micromouse Simulator")

    add_test(NAME TC04_InitializeMessage COMMAND MicromouseSimulator)
    set_tests_properties(TC04_InitializeMessage PROPERTIES
        PASS_REGULAR_EXPRESSION "Initializing Micromouse Simulator")

    add_test(NAME TC05_RunMessage COMMAND MicromouseSimulator)
    set_tests_properties(TC05_RunMessage PROPERTIES
        PASS_REGULAR_EXPRESSION "Micromouse Simulator is running")

    add_test(NAME TC06_ShutdownMessage COMMAND MicromouseSimulator)
    set_tests_properties(TC06_ShutdownMessage PROPERTIES
        PASS_REGULAR_EXPRESSION "Shutting down application")

    add_test(NAME Lifecycle_ExactOutput
        COMMAND ${CMAKE_COMMAND}
            -DPROGRAM=$<TARGET_FILE:MicromouseSimulator>
            -P ${PROJECT_SOURCE_DIR}/tests/verify_output.cmake
    )
endif()
