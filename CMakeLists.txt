cmake_minimum_required(VERSION 3.16)
project(test_aubo_sdk)

set(CMAKE_CXX_STANDARD 14)

add_executable(test_aubo_sdk main.cpp)
target_link_libraries(test_aubo_sdk aubo_sdk_d ${CMAKE_DL_LIBS} dl)
