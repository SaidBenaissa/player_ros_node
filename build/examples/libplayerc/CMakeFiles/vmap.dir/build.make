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
include examples/libplayerc/CMakeFiles/vmap.dir/depend.make

# Include the progress variables for this target.
include examples/libplayerc/CMakeFiles/vmap.dir/progress.make

# Include the compile flags for this target's objects.
include examples/libplayerc/CMakeFiles/vmap.dir/flags.make

examples/libplayerc/CMakeFiles/vmap.dir/vmap.o: examples/libplayerc/CMakeFiles/vmap.dir/flags.make
examples/libplayerc/CMakeFiles/vmap.dir/vmap.o: ../examples/libplayerc/vmap.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/libplayerc/CMakeFiles/vmap.dir/vmap.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vmap.dir/vmap.o   -c /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc/vmap.c

examples/libplayerc/CMakeFiles/vmap.dir/vmap.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vmap.dir/vmap.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc/vmap.c > CMakeFiles/vmap.dir/vmap.i

examples/libplayerc/CMakeFiles/vmap.dir/vmap.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vmap.dir/vmap.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc/vmap.c -o CMakeFiles/vmap.dir/vmap.s

examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.requires:
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.requires

examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.provides: examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.requires
	$(MAKE) -f examples/libplayerc/CMakeFiles/vmap.dir/build.make examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.provides.build
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.provides

examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.provides.build: examples/libplayerc/CMakeFiles/vmap.dir/vmap.o

# Object files for target vmap
vmap_OBJECTS = \
"CMakeFiles/vmap.dir/vmap.o"

# External object files for target vmap
vmap_EXTERNAL_OBJECTS =

examples/libplayerc/vmap: examples/libplayerc/CMakeFiles/vmap.dir/vmap.o
examples/libplayerc/vmap: client_libs/libplayerc/libplayerc.so.3.0.2
examples/libplayerc/vmap: libplayerinterface/libplayerinterface.so.3.0.2
examples/libplayerc/vmap: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc/vmap: libplayerwkb/libplayerwkb.so.3.0.2
examples/libplayerc/vmap: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc/vmap: libplayerjpeg/libplayerjpeg.so.3.0.2
examples/libplayerc/vmap: examples/libplayerc/CMakeFiles/vmap.dir/build.make
examples/libplayerc/vmap: examples/libplayerc/CMakeFiles/vmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable vmap"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/libplayerc/CMakeFiles/vmap.dir/build: examples/libplayerc/vmap
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/build

examples/libplayerc/CMakeFiles/vmap.dir/requires: examples/libplayerc/CMakeFiles/vmap.dir/vmap.o.requires
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/requires

examples/libplayerc/CMakeFiles/vmap.dir/clean:
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc && $(CMAKE_COMMAND) -P CMakeFiles/vmap.dir/cmake_clean.cmake
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/clean

examples/libplayerc/CMakeFiles/vmap.dir/depend:
	cd /home/benaissa/Téléchargements/player-3.0.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benaissa/Téléchargements/player-3.0.2 /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc /home/benaissa/Téléchargements/player-3.0.2/build /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc/CMakeFiles/vmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/libplayerc/CMakeFiles/vmap.dir/depend

