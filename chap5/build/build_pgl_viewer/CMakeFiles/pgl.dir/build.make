# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nathan/project/vslam/chap5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nathan/project/vslam/chap5/build

# Include any dependencies generated for this target.
include build_pgl_viewer/CMakeFiles/pgl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include build_pgl_viewer/CMakeFiles/pgl.dir/compiler_depend.make

# Include the progress variables for this target.
include build_pgl_viewer/CMakeFiles/pgl.dir/progress.make

# Include the compile flags for this target's objects.
include build_pgl_viewer/CMakeFiles/pgl.dir/flags.make

build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o: build_pgl_viewer/CMakeFiles/pgl.dir/flags.make
build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o: /home/nathan/project/vslam/pgl_viewer/pgl.cpp
build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o: build_pgl_viewer/CMakeFiles/pgl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nathan/project/vslam/chap5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o"
	cd /home/nathan/project/vslam/chap5/build/build_pgl_viewer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o -MF CMakeFiles/pgl.dir/pgl.cpp.o.d -o CMakeFiles/pgl.dir/pgl.cpp.o -c /home/nathan/project/vslam/pgl_viewer/pgl.cpp

build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pgl.dir/pgl.cpp.i"
	cd /home/nathan/project/vslam/chap5/build/build_pgl_viewer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nathan/project/vslam/pgl_viewer/pgl.cpp > CMakeFiles/pgl.dir/pgl.cpp.i

build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pgl.dir/pgl.cpp.s"
	cd /home/nathan/project/vslam/chap5/build/build_pgl_viewer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nathan/project/vslam/pgl_viewer/pgl.cpp -o CMakeFiles/pgl.dir/pgl.cpp.s

# Object files for target pgl
pgl_OBJECTS = \
"CMakeFiles/pgl.dir/pgl.cpp.o"

# External object files for target pgl
pgl_EXTERNAL_OBJECTS =

build_pgl_viewer/libpgl.so: build_pgl_viewer/CMakeFiles/pgl.dir/pgl.cpp.o
build_pgl_viewer/libpgl.so: build_pgl_viewer/CMakeFiles/pgl.dir/build.make
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_glgeometry.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_plot.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_python.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_scene.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_tools.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_video.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_geometry.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libtinyobj.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_display.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_vars.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_windowing.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_opengl.so
build_pgl_viewer/libpgl.so: /usr/lib/x86_64-linux-gnu/libGLEW.so
build_pgl_viewer/libpgl.so: /usr/lib/x86_64-linux-gnu/libOpenGL.so
build_pgl_viewer/libpgl.so: /usr/lib/x86_64-linux-gnu/libGLX.so
build_pgl_viewer/libpgl.so: /usr/lib/x86_64-linux-gnu/libGLU.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_image.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_packetstream.so
build_pgl_viewer/libpgl.so: /usr/local/lib/libpango_core.so
build_pgl_viewer/libpgl.so: build_pgl_viewer/CMakeFiles/pgl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nathan/project/vslam/chap5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libpgl.so"
	cd /home/nathan/project/vslam/chap5/build/build_pgl_viewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pgl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build_pgl_viewer/CMakeFiles/pgl.dir/build: build_pgl_viewer/libpgl.so
.PHONY : build_pgl_viewer/CMakeFiles/pgl.dir/build

build_pgl_viewer/CMakeFiles/pgl.dir/clean:
	cd /home/nathan/project/vslam/chap5/build/build_pgl_viewer && $(CMAKE_COMMAND) -P CMakeFiles/pgl.dir/cmake_clean.cmake
.PHONY : build_pgl_viewer/CMakeFiles/pgl.dir/clean

build_pgl_viewer/CMakeFiles/pgl.dir/depend:
	cd /home/nathan/project/vslam/chap5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nathan/project/vslam/chap5 /home/nathan/project/vslam/pgl_viewer /home/nathan/project/vslam/chap5/build /home/nathan/project/vslam/chap5/build/build_pgl_viewer /home/nathan/project/vslam/chap5/build/build_pgl_viewer/CMakeFiles/pgl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build_pgl_viewer/CMakeFiles/pgl.dir/depend

