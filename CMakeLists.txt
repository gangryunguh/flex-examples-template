cmake_minimum_required(VERSION 3.10)
project(flex_exercise)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "-fpermissive -g -O0 -DDEBUG")
set(CMAKE_PREFIX_PATH "/usr/local")
set(CMAKE_BUILD_TYPE Debug)

#set(FLEX_EXECUTABLE "your most recent version of flex preferably flex 2.6")
set(FLEX_EXECUTABLE /usr/local/opt/flex/bin/flex)

find_package(FLEX REQUIRED)

#set(FLEX_INCLUDE_DIRS "your most recent version of flex include dir")
set(FLEX_INCLUDE_DIRS /usr/local/opt/flex/include)

flex_target(lcomment linecomment.l ${CMAKE_CURRENT_BINARY_DIR}/linecomment.cpp)
flex_target(lreplace replace.l ${CMAKE_CURRENT_BINARY_DIR}/replace.cpp)

#set(FLEX_LIBRARIES "your most recent version of flex libraries")
set(FLEX_LIBRARIES  /usr/local/opt/flex/lib/libfl.dylib
        /usr/local/opt/flex/lib/libfl.a /usr/local/opt/flex/lib/libfl.2.dylib )

add_executable(linecomment ${FLEX_lcomment_OUTPUTS})
add_executable(replace ${FLEX_lreplace_OUTPUTS})
target_link_libraries(linecomment ${FLEX_LIBRARIES})
target_link_libraries(replace ${FLEX_LIBRARIES})




