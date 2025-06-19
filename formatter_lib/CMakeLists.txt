cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(formatter)

add_library(formatter STATIC ${CMAKE_CURRENT_SOURCE_DIR}/formatter.cpp)

target_include_directories(formatter PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
