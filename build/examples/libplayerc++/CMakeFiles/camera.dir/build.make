# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/benaissa/Téléchargements/player-3.0.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/benaissa/Téléchargements/player-3.0.2/build

# Include any dependencies generated for this target.
include examples/libplayerc++/CMakeFiles/camera.dir/depend.make

# Include the progress variables for this target.
include examples/libplayerc++/CMakeFiles/camera.dir/progress.make

# Include the compile flags for this target's objects.
include examples/libplayerc++/CMakeFiles/camera.dir/flags.make

examples/libplayerc++/CMakeFiles/camera.dir/camera.o: examples/libplayerc++/CMakeFiles/camera.dir/flags.make
examples/libplayerc++/CMakeFiles/camera.dir/camera.o: ../examples/libplayerc++/camera.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/libplayerc++/CMakeFiles/camera.dir/camera.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/camera.dir/camera.o -c /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/camera.cc

examples/libplayerc++/CMakeFiles/camera.dir/camera.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera.dir/camera.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/camera.cc > CMakeFiles/camera.dir/camera.i

examples/libplayerc++/CMakeFiles/camera.dir/camera.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera.dir/camera.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/camera.cc -o CMakeFiles/camera.dir/camera.s

examples/libplayerc++/CMakeFiles/camera.dir/camera.o.requires:
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/camera.o.requires

examples/libplayerc++/CMakeFiles/camera.dir/camera.o.provides: examples/libplayerc++/CMakeFiles/camera.dir/camera.o.requires
	$(MAKE) -f examples/libplayerc++/CMakeFiles/camera.dir/build.make examples/libplayerc++/CMakeFiles/camera.dir/camera.o.provides.build
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/camera.o.provides

examples/libplayerc++/CMakeFiles/camera.dir/camera.o.provides.build: examples/libplayerc++/CMakeFiles/camera.dir/camera.o

# Object files for target camera
camera_OBJECTS = \
"CMakeFiles/camera.dir/camera.o"

# External object files for target camera
camera_EXTERNAL_OBJECTS =

examples/libplayerc++/camera: examples/libplayerc++/CMakeFiles/camera.dir/camera.o
examples/libplayerc++/camera: client_libs/libplayerc++/libplayerc++.so.3.0.2
examples/libplayerc++/camera: client_libs/libplayerc/libplayerc.so.3.0.2
examples/libplayerc++/camera: libplayerinterface/libplayerinterface.so.3.0.2
examples/libplayerc++/camera: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc++/camera: libplayerjpeg/libplayerjpeg.so.3.0.2
examples/libplayerc++/camera: libplayerwkb/libplayerwkb.so.3.0.2
examples/libplayerc++/camera: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc++/camera: examples/libplayerc++/CMakeFiles/camera.dir/build.make
examples/libplayerc++/camera: examples/libplayerc++/CMakeFiles/camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable camera"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/libplayerc++/CMakeFiles/camera.dir/build: examples/libplayerc++/camera
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/build

examples/libplayerc++/CMakeFiles/camera.dir/requires: examples/libplayerc++/CMakeFiles/camera.dir/camera.o.requires
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/requires

examples/libplayerc++/CMakeFiles/camera.dir/clean:
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && $(CMAKE_COMMAND) -P CMakeFiles/camera.dir/cmake_clean.cmake
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/clean

examples/libplayerc++/CMakeFiles/camera.dir/depend:
	cd /home/benaissa/Téléchargements/player-3.0.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benaissa/Téléchargements/player-3.0.2 /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++ /home/benaissa/Téléchargements/player-3.0.2/build /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++/CMakeFiles/camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/libplayerc++/CMakeFiles/camera.dir/depend

