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
include libplayertcp/CMakeFiles/playertcp.dir/depend.make

# Include the progress variables for this target.
include libplayertcp/CMakeFiles/playertcp.dir/progress.make

# Include the compile flags for this target's objects.
include libplayertcp/CMakeFiles/playertcp.dir/flags.make

libplayertcp/CMakeFiles/playertcp.dir/socket_util.o: libplayertcp/CMakeFiles/playertcp.dir/flags.make
libplayertcp/CMakeFiles/playertcp.dir/socket_util.o: ../libplayertcp/socket_util.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libplayertcp/CMakeFiles/playertcp.dir/socket_util.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/playertcp.dir/socket_util.o   -c /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/socket_util.c

libplayertcp/CMakeFiles/playertcp.dir/socket_util.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/playertcp.dir/socket_util.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/socket_util.c > CMakeFiles/playertcp.dir/socket_util.i

libplayertcp/CMakeFiles/playertcp.dir/socket_util.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/playertcp.dir/socket_util.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/socket_util.c -o CMakeFiles/playertcp.dir/socket_util.s

libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.requires:
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.requires

libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.provides: libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.requires
	$(MAKE) -f libplayertcp/CMakeFiles/playertcp.dir/build.make libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.provides.build
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.provides

libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.provides.build: libplayertcp/CMakeFiles/playertcp.dir/socket_util.o

libplayertcp/CMakeFiles/playertcp.dir/playertcp.o: libplayertcp/CMakeFiles/playertcp.dir/flags.make
libplayertcp/CMakeFiles/playertcp.dir/playertcp.o: ../libplayertcp/playertcp.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object libplayertcp/CMakeFiles/playertcp.dir/playertcp.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/playertcp.dir/playertcp.o -c /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/playertcp.cc

libplayertcp/CMakeFiles/playertcp.dir/playertcp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/playertcp.dir/playertcp.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/playertcp.cc > CMakeFiles/playertcp.dir/playertcp.i

libplayertcp/CMakeFiles/playertcp.dir/playertcp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/playertcp.dir/playertcp.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/playertcp.cc -o CMakeFiles/playertcp.dir/playertcp.s

libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.requires:
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.requires

libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.provides: libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.requires
	$(MAKE) -f libplayertcp/CMakeFiles/playertcp.dir/build.make libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.provides.build
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.provides

libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.provides.build: libplayertcp/CMakeFiles/playertcp.dir/playertcp.o

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o: libplayertcp/CMakeFiles/playertcp.dir/flags.make
libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o: ../libplayertcp/tcpremote_driver.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/benaissa/Téléchargements/player-3.0.2/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/playertcp.dir/tcpremote_driver.o -c /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/tcpremote_driver.cc

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/playertcp.dir/tcpremote_driver.i"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/tcpremote_driver.cc > CMakeFiles/playertcp.dir/tcpremote_driver.i

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/playertcp.dir/tcpremote_driver.s"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/benaissa/Téléchargements/player-3.0.2/libplayertcp/tcpremote_driver.cc -o CMakeFiles/playertcp.dir/tcpremote_driver.s

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.requires:
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.requires

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.provides: libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.requires
	$(MAKE) -f libplayertcp/CMakeFiles/playertcp.dir/build.make libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.provides.build
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.provides

libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.provides.build: libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o

# Object files for target playertcp
playertcp_OBJECTS = \
"CMakeFiles/playertcp.dir/socket_util.o" \
"CMakeFiles/playertcp.dir/playertcp.o" \
"CMakeFiles/playertcp.dir/tcpremote_driver.o"

# External object files for target playertcp
playertcp_EXTERNAL_OBJECTS =

libplayertcp/libplayertcp.so.3.0.2: libplayertcp/CMakeFiles/playertcp.dir/socket_util.o
libplayertcp/libplayertcp.so.3.0.2: libplayertcp/CMakeFiles/playertcp.dir/playertcp.o
libplayertcp/libplayertcp.so.3.0.2: libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o
libplayertcp/libplayertcp.so.3.0.2: libplayercore/libplayercore.so.3.0.2
libplayertcp/libplayertcp.so.3.0.2: libplayercommon/libplayercommon.so.3.0.2
libplayertcp/libplayertcp.so.3.0.2: libplayerinterface/libplayerinterface.so.3.0.2
libplayertcp/libplayertcp.so.3.0.2: libplayercommon/libplayercommon.so.3.0.2
libplayertcp/libplayertcp.so.3.0.2: libplayertcp/CMakeFiles/playertcp.dir/build.make
libplayertcp/libplayertcp.so.3.0.2: libplayertcp/CMakeFiles/playertcp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libplayertcp.so"
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/playertcp.dir/link.txt --verbose=$(VERBOSE)
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && $(CMAKE_COMMAND) -E cmake_symlink_library libplayertcp.so.3.0.2 libplayertcp.so.3.0 libplayertcp.so

libplayertcp/libplayertcp.so.3.0: libplayertcp/libplayertcp.so.3.0.2

libplayertcp/libplayertcp.so: libplayertcp/libplayertcp.so.3.0.2

# Rule to build all files generated by this target.
libplayertcp/CMakeFiles/playertcp.dir/build: libplayertcp/libplayertcp.so
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/build

libplayertcp/CMakeFiles/playertcp.dir/requires: libplayertcp/CMakeFiles/playertcp.dir/socket_util.o.requires
libplayertcp/CMakeFiles/playertcp.dir/requires: libplayertcp/CMakeFiles/playertcp.dir/playertcp.o.requires
libplayertcp/CMakeFiles/playertcp.dir/requires: libplayertcp/CMakeFiles/playertcp.dir/tcpremote_driver.o.requires
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/requires

libplayertcp/CMakeFiles/playertcp.dir/clean:
	cd /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp && $(CMAKE_COMMAND) -P CMakeFiles/playertcp.dir/cmake_clean.cmake
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/clean

libplayertcp/CMakeFiles/playertcp.dir/depend:
	cd /home/benaissa/Téléchargements/player-3.0.2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/benaissa/Téléchargements/player-3.0.2 /home/benaissa/Téléchargements/player-3.0.2/libplayertcp /home/benaissa/Téléchargements/player-3.0.2/build /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp /home/benaissa/Téléchargements/player-3.0.2/build/libplayertcp/CMakeFiles/playertcp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libplayertcp/CMakeFiles/playertcp.dir/depend

