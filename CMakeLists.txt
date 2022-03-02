cmake_minimum_required(VERSION 3.10)
project(test_aubo_sdk VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wnon-virtual-dtor")

add_executable(test_aubo_sdk main.cpp)
target_include_directories(test_aubo_sdk PUBLIC ./usr/include)
target_link_directories(test_aubo_sdk PUBLIC ./usr/lib)
target_link_libraries(test_aubo_sdk aubo_sdk)
