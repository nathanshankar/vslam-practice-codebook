cmake_minimum_required( VERSION 3.5 )
project( pglViewer )

include_directories( "/usr/include/eigen3" )

set(CMAKE_TOOLCHAIN_FILE "/home/nathan/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
set(CMAKE_PREFIX_PATH "/home/nathan/vcpkg/installed/x64-linux/share/sophus")
find_package(Sophus CONFIG REQUIRED)
include_directories( ${Sophus_INCLUDE_DIRS} )

find_package(Pangolin 0.8 REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})

add_library( pgl SHARED pgl.cpp )
target_link_libraries(pgl PUBLIC Sophus::Sophus ${Pangolin_LIBRARIES})
target_include_directories(pgl PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
