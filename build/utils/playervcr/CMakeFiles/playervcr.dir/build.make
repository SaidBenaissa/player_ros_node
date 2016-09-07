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
include utils/playervcr/CMakeFiles/playervcr.dir/depend.make

# Include the progress variables for this target.
include utils/playervcr/CMakeFiles/playervcr.dir/progress.make

# Include the compile flags for this target's objects.
include utils/playervcr/CMakeFiles/playervcr.dir/flags.make

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o: utils/playervcr/CMakeFiles/playervcr.dir/flags.make
utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o: ../utils/playervcr/playervcr.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS)  -pthread -o CMakeFiles/playervcr.dir/playervcr.o   -c /home/benaissa/Téléchargements/player-3.0.2/utils/playervcr/playervcr.c

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/playervcr.dir/playervcr.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS)  -pthread -E /home/benaissa/Téléchargements/player-3.0.2/utils/playervcr/playervcr.c > CMakeFiles/playervcr.dir/playervcr.i

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/playervcr.dir/playervcr.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS)  -pthread -S /home/benaissa/Téléchargements/player-3.0.2/utils/playervcr/playervcr.c -o CMakeFiles/playervcr.dir/playervcr.s

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.requires:
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.requires

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.provides: utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.requires
	$(MAKE) -f utils/playervcr/CMakeFiles/playervcr.dir/build.make utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.provides.build
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.provides

utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.provides.build: utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o

# Object files for target playervcr
playervcr_OBJECTS = \
"CMakeFiles/playervcr.dir/playervcr.o"

# External object files for target playervcr
playervcr_EXTERNAL_OBJECTS =

utils/playervcr/playervcr: utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o
utils/playervcr/playervcr: client_libs/libplayerc/libplayerc.so.3.0.2
utils/playervcr/playervcr: libplayerinterface/libplayerinterface.so.3.0.2
utils/playervcr/playervcr: libplayercommon/libplayercommon.so.3.0.2
utils/playervcr/playervcr: libplayerwkb/libplayerwkb.so.3.0.2
utils/playervcr/playervcr: libplayercommon/libplayercommon.so.3.0.2
utils/playervcr/playervcr: libplayerjpeg/libplayerjpeg.so.3.0.2
utils/playervcr/playervcr: utils/playervcr/CMakeFiles/playervcr.dir/build.make
utils/playervcr/playervcr: utils/playervcr/CMakeFiles/playervcr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable playervcr"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/playervcr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utils/playervcr/CMakeFiles/playervcr.dir/build: utils/playervcr/playervcr
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/build

utils/playervcr/CMakeFiles/playervcr.dir/requires: utils/playervcr/CMakeFiles/playervcr.dir/playervcr.o.requires
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/requires

utils/playervcr/CMakeFiles/playervcr.dir/clean:
	cd /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr && $(CMAKE_COMMAND) -P CMakeFiles/playervcr.dir/cmake_clean.cmake
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/clean

utils/playervcr/CMakeFiles/playervcr.dir/depend:
	cd /home/benaissa/Téléchargements/player-3.0.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benaissa/Téléchargements/player-3.0.2 /home/benaissa/Téléchargements/player-3.0.2/utils/playervcr /home/benaissa/Téléchargements/player-3.0.2/build /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr /home/benaissa/Téléchargements/player-3.0.2/build/utils/playervcr/CMakeFiles/playervcr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utils/playervcr/CMakeFiles/playervcr.dir/depend

