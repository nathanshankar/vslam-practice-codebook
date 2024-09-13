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
CMAKE_SOURCE_DIR = /home/nathan/project/vslam/pgl_viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nathan/project/vslam/pgl_viewer

# Include any dependencies generated for this target.
include CMakeFiles/pgl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pgl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pgl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pgl.dir/flags.make

CMakeFiles/pgl.dir/pgl.cpp.o: CMakeFiles/pgl.dir/flags.make
CMakeFiles/pgl.dir/pgl.cpp.o: pgl.cpp
CMakeFiles/pgl.dir/pgl.cpp.o: CMakeFiles/pgl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nathan/project/vslam/pgl_viewer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pgl.dir/pgl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pgl.dir/pgl.cpp.o -MF CMakeFiles/pgl.dir/pgl.cpp.o.d -o CMakeFiles/pgl.dir/pgl.cpp.o -c /home/nathan/project/vslam/pgl_viewer/pgl.cpp

CMakeFiles/pgl.dir/pgl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pgl.dir/pgl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nathan/project/vslam/pgl_viewer/pgl.cpp > CMakeFiles/pgl.dir/pgl.cpp.i

CMakeFiles/pgl.dir/pgl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pgl.dir/pgl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nathan/project/vslam/pgl_viewer/pgl.cpp -o CMakeFiles/pgl.dir/pgl.cpp.s

# Object files for target pgl
pgl_OBJECTS = \
"CMakeFiles/pgl.dir/pgl.cpp.o"

# External object files for target pgl
pgl_EXTERNAL_OBJECTS =

libpgl.so: CMakeFiles/pgl.dir/pgl.cpp.o
libpgl.so: CMakeFiles/pgl.dir/build.make
libpgl.so: /usr/local/lib/libpango_glgeometry.so
libpgl.so: /usr/local/lib/libpango_plot.so
libpgl.so: /usr/local/lib/libpango_python.so
libpgl.so: /usr/local/lib/libpango_scene.so
libpgl.so: /usr/local/lib/libpango_tools.so
libpgl.so: /usr/local/lib/libpango_video.so
libpgl.so: /usr/local/lib/libpango_geometry.so
libpgl.so: /usr/local/lib/libtinyobj.so
libpgl.so: /usr/local/lib/libpango_display.so
libpgl.so: /usr/local/lib/libpango_vars.so
libpgl.so: /usr/local/lib/libpango_windowing.so
libpgl.so: /usr/local/lib/libpango_opengl.so
libpgl.so: /usr/lib/x86_64-linux-gnu/libGLEW.so
libpgl.so: /usr/lib/x86_64-linux-gnu/libOpenGL.so
libpgl.so: /usr/lib/x86_64-linux-gnu/libGLX.so
libpgl.so: /usr/lib/x86_64-linux-gnu/libGLU.so
libpgl.so: /usr/local/lib/libpango_image.so
libpgl.so: /usr/local/lib/libpango_packetstream.so
libpgl.so: /usr/local/lib/libpango_core.so
libpgl.so: CMakeFiles/pgl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nathan/project/vslam/pgl_viewer/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libpgl.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pgl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pgl.dir/build: libpgl.so
.PHONY : CMakeFiles/pgl.dir/build

CMakeFiles/pgl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pgl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pgl.dir/clean

CMakeFiles/pgl.dir/depend:
	cd /home/nathan/project/vslam/pgl_viewer && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nathan/project/vslam/pgl_viewer /home/nathan/project/vslam/pgl_viewer /home/nathan/project/vslam/pgl_viewer /home/nathan/project/vslam/pgl_viewer /home/nathan/project/vslam/pgl_viewer/CMakeFiles/pgl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pgl.dir/depend

