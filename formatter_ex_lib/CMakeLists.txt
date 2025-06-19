cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(formatter_ex)

add_library(formatter_ex STATIC ${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex.cpp)

if (NOT TARGET formatter)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter_lib)
endif()

target_link_libraries(formatter_ex PUBLIC formatter)

target_include_directories(formatter_ex PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
