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

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/git/heli/sys/apps/helicopter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/git/heli/sys/apps/helicopter/build

# Include any dependencies generated for this target.
include os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/depend.make

# Include the progress variables for this target.
include os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/progress.make

# Include the compile flags for this target's objects.
include os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/flags.make

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/flags.make
os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o: /home/git/heli/os/com/tests/LocalSerialCommunicationTests.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/heli/sys/apps/helicopter/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o"
	cd /home/git/heli/sys/apps/helicopter/build/os/com/tests && /usr/lib64/colorgcc/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o -c /home/git/heli/os/com/tests/LocalSerialCommunicationTests.cpp

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.i"
	cd /home/git/heli/sys/apps/helicopter/build/os/com/tests && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/heli/os/com/tests/LocalSerialCommunicationTests.cpp > CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.i

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.s"
	cd /home/git/heli/sys/apps/helicopter/build/os/com/tests && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/heli/os/com/tests/LocalSerialCommunicationTests.cpp -o CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.s

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.requires:
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.requires

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.provides: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.requires
	$(MAKE) -f os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/build.make os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.provides.build
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.provides

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.provides.build: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o

# Object files for target LocalSerialCommunicationTests
LocalSerialCommunicationTests_OBJECTS = \
"CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o"

# External object files for target LocalSerialCommunicationTests
LocalSerialCommunicationTests_EXTERNAL_OBJECTS =

os/com/tests/LocalSerialCommunicationTests: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o
os/com/tests/LocalSerialCommunicationTests: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/build.make
os/com/tests/LocalSerialCommunicationTests: os/utils/libutils.a
os/com/tests/LocalSerialCommunicationTests: /usr/lib64/libboost_system-mt.so
os/com/tests/LocalSerialCommunicationTests: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable LocalSerialCommunicationTests"
	cd /home/git/heli/sys/apps/helicopter/build/os/com/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LocalSerialCommunicationTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/build: os/com/tests/LocalSerialCommunicationTests
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/build

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/requires: os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/LocalSerialCommunicationTests.cpp.o.requires
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/requires

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/clean:
	cd /home/git/heli/sys/apps/helicopter/build/os/com/tests && $(CMAKE_COMMAND) -P CMakeFiles/LocalSerialCommunicationTests.dir/cmake_clean.cmake
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/clean

os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/depend:
	cd /home/git/heli/sys/apps/helicopter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/git/heli/sys/apps/helicopter /home/git/heli/os/com/tests /home/git/heli/sys/apps/helicopter/build /home/git/heli/sys/apps/helicopter/build/os/com/tests /home/git/heli/sys/apps/helicopter/build/os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : os/com/tests/CMakeFiles/LocalSerialCommunicationTests.dir/depend

