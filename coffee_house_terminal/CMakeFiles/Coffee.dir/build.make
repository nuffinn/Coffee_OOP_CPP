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
CMAKE_SOURCE_DIR = /home/starburst/coffee_house_terminal/coffee_house_terminal

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/starburst/coffee_house_terminal/coffee_house_terminal

# Include any dependencies generated for this target.
include CMakeFiles/Coffee.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Coffee.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Coffee.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Coffee.dir/flags.make

CMakeFiles/Coffee.dir/main.cpp.o: CMakeFiles/Coffee.dir/flags.make
CMakeFiles/Coffee.dir/main.cpp.o: main.cpp
CMakeFiles/Coffee.dir/main.cpp.o: CMakeFiles/Coffee.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Coffee.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Coffee.dir/main.cpp.o -MF CMakeFiles/Coffee.dir/main.cpp.o.d -o CMakeFiles/Coffee.dir/main.cpp.o -c /home/starburst/coffee_house_terminal/coffee_house_terminal/main.cpp

CMakeFiles/Coffee.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Coffee.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starburst/coffee_house_terminal/coffee_house_terminal/main.cpp > CMakeFiles/Coffee.dir/main.cpp.i

CMakeFiles/Coffee.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Coffee.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starburst/coffee_house_terminal/coffee_house_terminal/main.cpp -o CMakeFiles/Coffee.dir/main.cpp.s

CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o: CMakeFiles/Coffee.dir/flags.make
CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o: resources/sources/Product.cpp
CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o: CMakeFiles/Coffee.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o -MF CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o.d -o CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o -c /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/Product.cpp

CMakeFiles/Coffee.dir/resources/sources/Product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Coffee.dir/resources/sources/Product.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/Product.cpp > CMakeFiles/Coffee.dir/resources/sources/Product.cpp.i

CMakeFiles/Coffee.dir/resources/sources/Product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Coffee.dir/resources/sources/Product.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/Product.cpp -o CMakeFiles/Coffee.dir/resources/sources/Product.cpp.s

CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o: CMakeFiles/Coffee.dir/flags.make
CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o: resources/sources/ProductDatabase.cpp
CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o: CMakeFiles/Coffee.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o -MF CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o.d -o CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o -c /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/ProductDatabase.cpp

CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/ProductDatabase.cpp > CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.i

CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/ProductDatabase.cpp -o CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.s

CMakeFiles/Coffee.dir/resources/sources/User.cpp.o: CMakeFiles/Coffee.dir/flags.make
CMakeFiles/Coffee.dir/resources/sources/User.cpp.o: resources/sources/User.cpp
CMakeFiles/Coffee.dir/resources/sources/User.cpp.o: CMakeFiles/Coffee.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Coffee.dir/resources/sources/User.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Coffee.dir/resources/sources/User.cpp.o -MF CMakeFiles/Coffee.dir/resources/sources/User.cpp.o.d -o CMakeFiles/Coffee.dir/resources/sources/User.cpp.o -c /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/User.cpp

CMakeFiles/Coffee.dir/resources/sources/User.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Coffee.dir/resources/sources/User.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/User.cpp > CMakeFiles/Coffee.dir/resources/sources/User.cpp.i

CMakeFiles/Coffee.dir/resources/sources/User.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Coffee.dir/resources/sources/User.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starburst/coffee_house_terminal/coffee_house_terminal/resources/sources/User.cpp -o CMakeFiles/Coffee.dir/resources/sources/User.cpp.s

# Object files for target Coffee
Coffee_OBJECTS = \
"CMakeFiles/Coffee.dir/main.cpp.o" \
"CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o" \
"CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o" \
"CMakeFiles/Coffee.dir/resources/sources/User.cpp.o"

# External object files for target Coffee
Coffee_EXTERNAL_OBJECTS =

Coffee: CMakeFiles/Coffee.dir/main.cpp.o
Coffee: CMakeFiles/Coffee.dir/resources/sources/Product.cpp.o
Coffee: CMakeFiles/Coffee.dir/resources/sources/ProductDatabase.cpp.o
Coffee: CMakeFiles/Coffee.dir/resources/sources/User.cpp.o
Coffee: CMakeFiles/Coffee.dir/build.make
Coffee: CMakeFiles/Coffee.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Coffee"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Coffee.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Coffee.dir/build: Coffee
.PHONY : CMakeFiles/Coffee.dir/build

CMakeFiles/Coffee.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Coffee.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Coffee.dir/clean

CMakeFiles/Coffee.dir/depend:
	cd /home/starburst/coffee_house_terminal/coffee_house_terminal && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/starburst/coffee_house_terminal/coffee_house_terminal /home/starburst/coffee_house_terminal/coffee_house_terminal /home/starburst/coffee_house_terminal/coffee_house_terminal /home/starburst/coffee_house_terminal/coffee_house_terminal /home/starburst/coffee_house_terminal/coffee_house_terminal/CMakeFiles/Coffee.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Coffee.dir/depend

