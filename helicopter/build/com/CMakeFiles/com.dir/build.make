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
include com/CMakeFiles/com.dir/depend.make

# Include the progress variables for this target.
include com/CMakeFiles/com.dir/progress.make

# Include the compile flags for this target's objects.
include com/CMakeFiles/com.dir/flags.make

com/CMakeFiles/com.dir/MapleInstantiation.cpp.o: com/CMakeFiles/com.dir/flags.make
com/CMakeFiles/com.dir/MapleInstantiation.cpp.o: /home/git/heli/sys/com/MapleInstantiation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/heli/sys/apps/helicopter/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object com/CMakeFiles/com.dir/MapleInstantiation.cpp.o"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/com.dir/MapleInstantiation.cpp.o -c /home/git/heli/sys/com/MapleInstantiation.cpp

com/CMakeFiles/com.dir/MapleInstantiation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/com.dir/MapleInstantiation.cpp.i"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/heli/sys/com/MapleInstantiation.cpp > CMakeFiles/com.dir/MapleInstantiation.cpp.i

com/CMakeFiles/com.dir/MapleInstantiation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/com.dir/MapleInstantiation.cpp.s"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/heli/sys/com/MapleInstantiation.cpp -o CMakeFiles/com.dir/MapleInstantiation.cpp.s

com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.requires:
.PHONY : com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.requires

com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.provides: com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.requires
	$(MAKE) -f com/CMakeFiles/com.dir/build.make com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.provides.build
.PHONY : com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.provides

com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.provides.build: com/CMakeFiles/com.dir/MapleInstantiation.cpp.o

com/CMakeFiles/com.dir/StmInstantiation.cpp.o: com/CMakeFiles/com.dir/flags.make
com/CMakeFiles/com.dir/StmInstantiation.cpp.o: /home/git/heli/sys/com/StmInstantiation.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/git/heli/sys/apps/helicopter/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object com/CMakeFiles/com.dir/StmInstantiation.cpp.o"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/com.dir/StmInstantiation.cpp.o -c /home/git/heli/sys/com/StmInstantiation.cpp

com/CMakeFiles/com.dir/StmInstantiation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/com.dir/StmInstantiation.cpp.i"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/git/heli/sys/com/StmInstantiation.cpp > CMakeFiles/com.dir/StmInstantiation.cpp.i

com/CMakeFiles/com.dir/StmInstantiation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/com.dir/StmInstantiation.cpp.s"
	cd /home/git/heli/sys/apps/helicopter/build/com && /usr/lib64/colorgcc/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/git/heli/sys/com/StmInstantiation.cpp -o CMakeFiles/com.dir/StmInstantiation.cpp.s

com/CMakeFiles/com.dir/StmInstantiation.cpp.o.requires:
.PHONY : com/CMakeFiles/com.dir/StmInstantiation.cpp.o.requires

com/CMakeFiles/com.dir/StmInstantiation.cpp.o.provides: com/CMakeFiles/com.dir/StmInstantiation.cpp.o.requires
	$(MAKE) -f com/CMakeFiles/com.dir/build.make com/CMakeFiles/com.dir/StmInstantiation.cpp.o.provides.build
.PHONY : com/CMakeFiles/com.dir/StmInstantiation.cpp.o.provides

com/CMakeFiles/com.dir/StmInstantiation.cpp.o.provides.build: com/CMakeFiles/com.dir/StmInstantiation.cpp.o

# Object files for target com
com_OBJECTS = \
"CMakeFiles/com.dir/MapleInstantiation.cpp.o" \
"CMakeFiles/com.dir/StmInstantiation.cpp.o"

# External object files for target com
com_EXTERNAL_OBJECTS =

com/libcom.a: com/CMakeFiles/com.dir/MapleInstantiation.cpp.o
com/libcom.a: com/CMakeFiles/com.dir/StmInstantiation.cpp.o
com/libcom.a: com/CMakeFiles/com.dir/build.make
com/libcom.a: com/CMakeFiles/com.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libcom.a"
	cd /home/git/heli/sys/apps/helicopter/build/com && $(CMAKE_COMMAND) -P CMakeFiles/com.dir/cmake_clean_target.cmake
	cd /home/git/heli/sys/apps/helicopter/build/com && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/com.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
com/CMakeFiles/com.dir/build: com/libcom.a
.PHONY : com/CMakeFiles/com.dir/build

com/CMakeFiles/com.dir/requires: com/CMakeFiles/com.dir/MapleInstantiation.cpp.o.requires
com/CMakeFiles/com.dir/requires: com/CMakeFiles/com.dir/StmInstantiation.cpp.o.requires
.PHONY : com/CMakeFiles/com.dir/requires

com/CMakeFiles/com.dir/clean:
	cd /home/git/heli/sys/apps/helicopter/build/com && $(CMAKE_COMMAND) -P CMakeFiles/com.dir/cmake_clean.cmake
.PHONY : com/CMakeFiles/com.dir/clean

com/CMakeFiles/com.dir/depend:
	cd /home/git/heli/sys/apps/helicopter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/git/heli/sys/apps/helicopter /home/git/heli/sys/com /home/git/heli/sys/apps/helicopter/build /home/git/heli/sys/apps/helicopter/build/com /home/git/heli/sys/apps/helicopter/build/com/CMakeFiles/com.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : com/CMakeFiles/com.dir/depend

