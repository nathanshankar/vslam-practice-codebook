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
CMAKE_SOURCE_DIR = /home/nathan/project/vslam/chap2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nathan/project/vslam/chap2/build

# Include any dependencies generated for this target.
include CMakeFiles/eigenTransform.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/eigenTransform.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/eigenTransform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/eigenTransform.dir/flags.make

CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o: CMakeFiles/eigenTransform.dir/flags.make
CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o: ../coordinateTransform.cpp
CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o: CMakeFiles/eigenTransform.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nathan/project/vslam/chap2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o -MF CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o.d -o CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o -c /home/nathan/project/vslam/chap2/coordinateTransform.cpp

CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nathan/project/vslam/chap2/coordinateTransform.cpp > CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.i

CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nathan/project/vslam/chap2/coordinateTransform.cpp -o CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.s

# Object files for target eigenTransform
eigenTransform_OBJECTS = \
"CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o"

# External object files for target eigenTransform
eigenTransform_EXTERNAL_OBJECTS =

eigenTransform: CMakeFiles/eigenTransform.dir/coordinateTransform.cpp.o
eigenTransform: CMakeFiles/eigenTransform.dir/build.make
eigenTransform: CMakeFiles/eigenTransform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nathan/project/vslam/chap2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eigenTransform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eigenTransform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/eigenTransform.dir/build: eigenTransform
.PHONY : CMakeFiles/eigenTransform.dir/build

CMakeFiles/eigenTransform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eigenTransform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eigenTransform.dir/clean

CMakeFiles/eigenTransform.dir/depend:
	cd /home/nathan/project/vslam/chap2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nathan/project/vslam/chap2 /home/nathan/project/vslam/chap2 /home/nathan/project/vslam/chap2/build /home/nathan/project/vslam/chap2/build /home/nathan/project/vslam/chap2/build/CMakeFiles/eigenTransform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eigenTransform.dir/depend

