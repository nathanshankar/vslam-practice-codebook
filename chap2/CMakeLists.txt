cmake_minimum_required(VERSION 3.5)
project(Eigen)
include_directories( "/usr/include/eigen3" )
add_executable(eigenMatrix eigenMatrix.cpp)

add_executable(eigenGeometry useGeometry.cpp)

add_executable(eigenTransform coordinateTransform.cpp)

find_package(Pangolin 0.8 REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})

add_executable(traj plotTrajectory.cpp)
target_link_libraries(traj ${Pangolin_LIBRARIES})