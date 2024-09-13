cmake_minimum_required(VERSION 3.5)
project(image_proc)
find_package(OpenCV REQUIRED)
include_directories( "/usr/include/eigen3" )
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../pgl_viewer build_pgl_viewer)
find_package(Pangolin 0.8 REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})
include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(image_basic imageBasics.cpp)
target_link_libraries(image_basic PRIVATE ${OpenCV_LIBS})

add_executable(distorted distorted.cpp)
target_link_libraries(distorted PRIVATE ${OpenCV_LIBS})

add_executable(pointcloud pc.cpp)
target_link_libraries(pointcloud PRIVATE ${OpenCV_LIBS} ${Pangolin_LIBRARIES} pgl)