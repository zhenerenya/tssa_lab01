# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/137/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/137/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/enya/workspace/tsisa/tssa_lab01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tssa_lab01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tssa_lab01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tssa_lab01.dir/flags.make

CMakeFiles/tssa_lab01.dir/main.cpp.o: CMakeFiles/tssa_lab01.dir/flags.make
CMakeFiles/tssa_lab01.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tssa_lab01.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tssa_lab01.dir/main.cpp.o -c /home/enya/workspace/tsisa/tssa_lab01/main.cpp

CMakeFiles/tssa_lab01.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tssa_lab01.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enya/workspace/tsisa/tssa_lab01/main.cpp > CMakeFiles/tssa_lab01.dir/main.cpp.i

CMakeFiles/tssa_lab01.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tssa_lab01.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enya/workspace/tsisa/tssa_lab01/main.cpp -o CMakeFiles/tssa_lab01.dir/main.cpp.s

# Object files for target tssa_lab01
tssa_lab01_OBJECTS = \
"CMakeFiles/tssa_lab01.dir/main.cpp.o"

# External object files for target tssa_lab01
tssa_lab01_EXTERNAL_OBJECTS =

tssa_lab01: CMakeFiles/tssa_lab01.dir/main.cpp.o
tssa_lab01: CMakeFiles/tssa_lab01.dir/build.make
tssa_lab01: CMakeFiles/tssa_lab01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tssa_lab01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tssa_lab01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tssa_lab01.dir/build: tssa_lab01

.PHONY : CMakeFiles/tssa_lab01.dir/build

CMakeFiles/tssa_lab01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tssa_lab01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tssa_lab01.dir/clean

CMakeFiles/tssa_lab01.dir/depend:
	cd /home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enya/workspace/tsisa/tssa_lab01 /home/enya/workspace/tsisa/tssa_lab01 /home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug /home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug /home/enya/workspace/tsisa/tssa_lab01/cmake-build-debug/CMakeFiles/tssa_lab01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tssa_lab01.dir/depend

