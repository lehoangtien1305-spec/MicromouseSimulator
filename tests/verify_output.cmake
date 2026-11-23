if(NOT DEFINED PROGRAM)
    message(FATAL_ERROR "Missing -DPROGRAM=path_to_executable")
endif()

execute_process(
    COMMAND "${PROGRAM}"
    RESULT_VARIABLE program_result
    OUTPUT_VARIABLE program_output
    ERROR_VARIABLE program_error
)
if(NOT program_result EQUAL 0)
    message(FATAL_ERROR "Program failed: ${program_result}; ${program_error}")
endif()

string(REPLACE "\r\n" "\n" program_output "${program_output}")
set(expected "Initializing Micromouse Simulator...\nMicromouse Simulator is running.\nShutting down application.\n")
if(NOT program_output STREQUAL expected)
    message(FATAL_ERROR "Unexpected application output:\n${program_output}\nExpected:\n${expected}")
endif()
message(STATUS "Lifecycle output exactly matches v0.1 requirements")
