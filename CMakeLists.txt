cmake_minimum_required(VERSION 2.5)
project(flex_exercise)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "-fpermissive -g -O0 -DDEBUG")
set(CMAKE_PREFIX_PATH "/usr/local")
set(CMAKE_BUILD_TYPE Debug)

#if (APPLE)
#    set(FLEX_EXECUTABLE /usr/local/opt/flex/bin/flex)
#else()
#    set(FLEX_EXECUTABLE /usr/bin/flex)
#endif()

find_package(FLEX REQUIRED)

#if (APPLE)
#    set(FLEX_INCLUDE_DIRS /usr/local/opt/flex/include)
#else()
#    set(FLEX_INCLUDE_DIRS /usr/include)
#endif()

flex_target(lcomment linecomment.l ${CMAKE_CURRENT_BINARY_DIR}/linecomment.cpp)
flex_target(lreplace replace.l ${CMAKE_CURRENT_BINARY_DIR}/replace.cpp)

#if (APPLE)
#    set(FLEX_LIBRARIES  /usr/local/opt/flex/lib/libfl.dylib
#            /usr/local/opt/flex/lib/libfl.a /usr/local/opt/flex/lib/libfl.2.dylib )
#endif()

add_executable(linecomment ${FLEX_lcomment_OUTPUTS})
add_executable(replace ${FLEX_lreplace_OUTPUTS})
#target_link_libraries(linecomment ${FLEX_LIBRARIES})
#target_link_libraries(replace ${FLEX_LIBRARIES})




