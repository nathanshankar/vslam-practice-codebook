cmake_minimum_required(VERSION 3.5)
project(SE_Chap3)
include_directories( "/usr/include/eigen3" )

set(CMAKE_TOOLCHAIN_FILE "/home/nathan/vcpkg/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
set(CMAKE_PREFIX_PATH "/home/nathan/vcpkg/installed/x64-linux/share/sophus")
find_package(Sophus CONFIG REQUIRED)
include_directories( ${Sophus_INCLUDE_DIRS} )

find_package(Pangolin 0.8 REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})

add_executable(prac se.cpp)
target_link_libraries(prac PRIVATE Sophus::Sophus)

add_executable(traj_err trajectoryerr.cpp)
target_link_libraries(traj_err PRIVATE Sophus::Sophus ${Pangolin_LIBRARIES})
