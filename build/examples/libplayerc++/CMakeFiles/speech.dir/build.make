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
include examples/libplayerc++/CMakeFiles/speech.dir/depend.make

# Include the progress variables for this target.
include examples/libplayerc++/CMakeFiles/speech.dir/progress.make

# Include the compile flags for this target's objects.
include examples/libplayerc++/CMakeFiles/speech.dir/flags.make

examples/libplayerc++/CMakeFiles/speech.dir/speech.o: examples/libplayerc++/CMakeFiles/speech.dir/flags.make
examples/libplayerc++/CMakeFiles/speech.dir/speech.o: ../examples/libplayerc++/speech.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/libplayerc++/CMakeFiles/speech.dir/speech.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/speech.dir/speech.o -c /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/speech.cc

examples/libplayerc++/CMakeFiles/speech.dir/speech.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/speech.dir/speech.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/speech.cc > CMakeFiles/speech.dir/speech.i

examples/libplayerc++/CMakeFiles/speech.dir/speech.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/speech.dir/speech.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++/speech.cc -o CMakeFiles/speech.dir/speech.s

examples/libplayerc++/CMakeFiles/speech.dir/speech.o.requires:
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/speech.o.requires

examples/libplayerc++/CMakeFiles/speech.dir/speech.o.provides: examples/libplayerc++/CMakeFiles/speech.dir/speech.o.requires
	$(MAKE) -f examples/libplayerc++/CMakeFiles/speech.dir/build.make examples/libplayerc++/CMakeFiles/speech.dir/speech.o.provides.build
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/speech.o.provides

examples/libplayerc++/CMakeFiles/speech.dir/speech.o.provides.build: examples/libplayerc++/CMakeFiles/speech.dir/speech.o

# Object files for target speech
speech_OBJECTS = \
"CMakeFiles/speech.dir/speech.o"

# External object files for target speech
speech_EXTERNAL_OBJECTS =

examples/libplayerc++/speech: examples/libplayerc++/CMakeFiles/speech.dir/speech.o
examples/libplayerc++/speech: client_libs/libplayerc++/libplayerc++.so.3.0.2
examples/libplayerc++/speech: client_libs/libplayerc/libplayerc.so.3.0.2
examples/libplayerc++/speech: libplayerinterface/libplayerinterface.so.3.0.2
examples/libplayerc++/speech: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc++/speech: libplayerjpeg/libplayerjpeg.so.3.0.2
examples/libplayerc++/speech: libplayerwkb/libplayerwkb.so.3.0.2
examples/libplayerc++/speech: libplayercommon/libplayercommon.so.3.0.2
examples/libplayerc++/speech: examples/libplayerc++/CMakeFiles/speech.dir/build.make
examples/libplayerc++/speech: examples/libplayerc++/CMakeFiles/speech.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable speech"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/speech.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/libplayerc++/CMakeFiles/speech.dir/build: examples/libplayerc++/speech
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/build

examples/libplayerc++/CMakeFiles/speech.dir/requires: examples/libplayerc++/CMakeFiles/speech.dir/speech.o.requires
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/requires

examples/libplayerc++/CMakeFiles/speech.dir/clean:
	cd /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ && $(CMAKE_COMMAND) -P CMakeFiles/speech.dir/cmake_clean.cmake
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/clean

examples/libplayerc++/CMakeFiles/speech.dir/depend:
	cd /home/benaissa/Téléchargements/player-3.0.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benaissa/Téléchargements/player-3.0.2 /home/benaissa/Téléchargements/player-3.0.2/examples/libplayerc++ /home/benaissa/Téléchargements/player-3.0.2/build /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++ /home/benaissa/Téléchargements/player-3.0.2/build/examples/libplayerc++/CMakeFiles/speech.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/libplayerc++/CMakeFiles/speech.dir/depend

