cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(solver_app)

add_executable(solver_app equation.cpp)

set(s_lib_path ${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib)

if (NOT TARGET formatter_ex)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_BINARY_DIR}/formatter_ex_lib)
endif()

if (NOT TARGET solver_lib)
    add_subdirectory(${s_lib_path} solver_lib)
endif()

target_include_directories(solver_app PUBLIC ${s_lib_path})

target_link_libraries(solver_app formatter_ex solver)
