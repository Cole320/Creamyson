# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/coal/Desktop/Coding/C/cardboard

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/coal/Desktop/Coding/C/cardboard

# Include any dependencies generated for this target.
include CMakeFiles/native_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/native_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/native_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/native_server.dir/flags.make

CMakeFiles/native_server.dir/src/shared/crypto.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/crypto.cpp.o: src/shared/crypto.cpp
CMakeFiles/native_server.dir/src/shared/crypto.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/native_server.dir/src/shared/crypto.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/crypto.cpp.o -MF CMakeFiles/native_server.dir/src/shared/crypto.cpp.o.d -o CMakeFiles/native_server.dir/src/shared/crypto.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/crypto.cpp

CMakeFiles/native_server.dir/src/shared/crypto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/shared/crypto.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/crypto.cpp > CMakeFiles/native_server.dir/src/shared/crypto.cpp.i

CMakeFiles/native_server.dir/src/shared/crypto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/shared/crypto.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/crypto.cpp -o CMakeFiles/native_server.dir/src/shared/crypto.cpp.s

CMakeFiles/native_server.dir/src/shared/stream.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/stream.cpp.o: src/shared/stream.cpp
CMakeFiles/native_server.dir/src/shared/stream.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/native_server.dir/src/shared/stream.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/stream.cpp.o -MF CMakeFiles/native_server.dir/src/shared/stream.cpp.o.d -o CMakeFiles/native_server.dir/src/shared/stream.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/stream.cpp

CMakeFiles/native_server.dir/src/shared/stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/shared/stream.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/stream.cpp > CMakeFiles/native_server.dir/src/shared/stream.cpp.i

CMakeFiles/native_server.dir/src/shared/stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/shared/stream.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/stream.cpp -o CMakeFiles/native_server.dir/src/shared/stream.cpp.s

CMakeFiles/native_server.dir/src/shared/tools.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/tools.cpp.o: src/shared/tools.cpp
CMakeFiles/native_server.dir/src/shared/tools.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/native_server.dir/src/shared/tools.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/tools.cpp.o -MF CMakeFiles/native_server.dir/src/shared/tools.cpp.o.d -o CMakeFiles/native_server.dir/src/shared/tools.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/tools.cpp

CMakeFiles/native_server.dir/src/shared/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/shared/tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/tools.cpp > CMakeFiles/native_server.dir/src/shared/tools.cpp.i

CMakeFiles/native_server.dir/src/shared/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/shared/tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/tools.cpp -o CMakeFiles/native_server.dir/src/shared/tools.cpp.s

CMakeFiles/native_server.dir/src/shared/cJSON.c.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/cJSON.c.o: src/shared/cJSON.c
CMakeFiles/native_server.dir/src/shared/cJSON.c.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/native_server.dir/src/shared/cJSON.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/cJSON.c.o -MF CMakeFiles/native_server.dir/src/shared/cJSON.c.o.d -o CMakeFiles/native_server.dir/src/shared/cJSON.c.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/cJSON.c

CMakeFiles/native_server.dir/src/shared/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/native_server.dir/src/shared/cJSON.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/cJSON.c > CMakeFiles/native_server.dir/src/shared/cJSON.c.i

CMakeFiles/native_server.dir/src/shared/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/native_server.dir/src/shared/cJSON.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/cJSON.c -o CMakeFiles/native_server.dir/src/shared/cJSON.c.s

CMakeFiles/native_server.dir/src/shared/microtar.c.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/microtar.c.o: src/shared/microtar.c
CMakeFiles/native_server.dir/src/shared/microtar.c.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/native_server.dir/src/shared/microtar.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/microtar.c.o -MF CMakeFiles/native_server.dir/src/shared/microtar.c.o.d -o CMakeFiles/native_server.dir/src/shared/microtar.c.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/microtar.c

CMakeFiles/native_server.dir/src/shared/microtar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/native_server.dir/src/shared/microtar.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/microtar.c > CMakeFiles/native_server.dir/src/shared/microtar.c.i

CMakeFiles/native_server.dir/src/shared/microtar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/native_server.dir/src/shared/microtar.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/microtar.c -o CMakeFiles/native_server.dir/src/shared/microtar.c.s

CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o: src/shared/b64/buffer.c
CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o -MF CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o.d -o CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/buffer.c

CMakeFiles/native_server.dir/src/shared/b64/buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/native_server.dir/src/shared/b64/buffer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/buffer.c > CMakeFiles/native_server.dir/src/shared/b64/buffer.c.i

CMakeFiles/native_server.dir/src/shared/b64/buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/native_server.dir/src/shared/b64/buffer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/buffer.c -o CMakeFiles/native_server.dir/src/shared/b64/buffer.c.s

CMakeFiles/native_server.dir/src/shared/b64/encode.c.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/b64/encode.c.o: src/shared/b64/encode.c
CMakeFiles/native_server.dir/src/shared/b64/encode.c.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/native_server.dir/src/shared/b64/encode.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/b64/encode.c.o -MF CMakeFiles/native_server.dir/src/shared/b64/encode.c.o.d -o CMakeFiles/native_server.dir/src/shared/b64/encode.c.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/encode.c

CMakeFiles/native_server.dir/src/shared/b64/encode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/native_server.dir/src/shared/b64/encode.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/encode.c > CMakeFiles/native_server.dir/src/shared/b64/encode.c.i

CMakeFiles/native_server.dir/src/shared/b64/encode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/native_server.dir/src/shared/b64/encode.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/encode.c -o CMakeFiles/native_server.dir/src/shared/b64/encode.c.s

CMakeFiles/native_server.dir/src/shared/b64/decode.c.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/shared/b64/decode.c.o: src/shared/b64/decode.c
CMakeFiles/native_server.dir/src/shared/b64/decode.c.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/native_server.dir/src/shared/b64/decode.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/shared/b64/decode.c.o -MF CMakeFiles/native_server.dir/src/shared/b64/decode.c.o.d -o CMakeFiles/native_server.dir/src/shared/b64/decode.c.o -c /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/decode.c

CMakeFiles/native_server.dir/src/shared/b64/decode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/native_server.dir/src/shared/b64/decode.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/decode.c > CMakeFiles/native_server.dir/src/shared/b64/decode.c.i

CMakeFiles/native_server.dir/src/shared/b64/decode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/native_server.dir/src/shared/b64/decode.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/shared/b64/decode.c -o CMakeFiles/native_server.dir/src/shared/b64/decode.c.s

CMakeFiles/native_server.dir/src/engine/command.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/engine/command.cpp.o: src/engine/command.cpp
CMakeFiles/native_server.dir/src/engine/command.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/native_server.dir/src/engine/command.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/engine/command.cpp.o -MF CMakeFiles/native_server.dir/src/engine/command.cpp.o.d -o CMakeFiles/native_server.dir/src/engine/command.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/engine/command.cpp

CMakeFiles/native_server.dir/src/engine/command.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/engine/command.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/engine/command.cpp > CMakeFiles/native_server.dir/src/engine/command.cpp.i

CMakeFiles/native_server.dir/src/engine/command.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/engine/command.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/engine/command.cpp -o CMakeFiles/native_server.dir/src/engine/command.cpp.s

CMakeFiles/native_server.dir/src/engine/server.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/engine/server.cpp.o: src/engine/server.cpp
CMakeFiles/native_server.dir/src/engine/server.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/native_server.dir/src/engine/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/engine/server.cpp.o -MF CMakeFiles/native_server.dir/src/engine/server.cpp.o.d -o CMakeFiles/native_server.dir/src/engine/server.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/engine/server.cpp

CMakeFiles/native_server.dir/src/engine/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/engine/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/engine/server.cpp > CMakeFiles/native_server.dir/src/engine/server.cpp.i

CMakeFiles/native_server.dir/src/engine/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/engine/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/engine/server.cpp -o CMakeFiles/native_server.dir/src/engine/server.cpp.s

CMakeFiles/native_server.dir/src/engine/worldio.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/engine/worldio.cpp.o: src/engine/worldio.cpp
CMakeFiles/native_server.dir/src/engine/worldio.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/native_server.dir/src/engine/worldio.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/engine/worldio.cpp.o -MF CMakeFiles/native_server.dir/src/engine/worldio.cpp.o.d -o CMakeFiles/native_server.dir/src/engine/worldio.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/engine/worldio.cpp

CMakeFiles/native_server.dir/src/engine/worldio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/engine/worldio.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/engine/worldio.cpp > CMakeFiles/native_server.dir/src/engine/worldio.cpp.i

CMakeFiles/native_server.dir/src/engine/worldio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/engine/worldio.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/engine/worldio.cpp -o CMakeFiles/native_server.dir/src/engine/worldio.cpp.s

CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o: src/fpsgame/entities.cpp
CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o -MF CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o.d -o CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/entities.cpp

CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/entities.cpp > CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.i

CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/entities.cpp -o CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.s

CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o: CMakeFiles/native_server.dir/flags.make
CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o: src/fpsgame/server.cpp
CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o: CMakeFiles/native_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o -MF CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o.d -o CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o -c /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/server.cpp

CMakeFiles/native_server.dir/src/fpsgame/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/native_server.dir/src/fpsgame/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/server.cpp > CMakeFiles/native_server.dir/src/fpsgame/server.cpp.i

CMakeFiles/native_server.dir/src/fpsgame/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/native_server.dir/src/fpsgame/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/coal/Desktop/Coding/C/cardboard/src/fpsgame/server.cpp -o CMakeFiles/native_server.dir/src/fpsgame/server.cpp.s

# Object files for target native_server
native_server_OBJECTS = \
"CMakeFiles/native_server.dir/src/shared/crypto.cpp.o" \
"CMakeFiles/native_server.dir/src/shared/stream.cpp.o" \
"CMakeFiles/native_server.dir/src/shared/tools.cpp.o" \
"CMakeFiles/native_server.dir/src/shared/cJSON.c.o" \
"CMakeFiles/native_server.dir/src/shared/microtar.c.o" \
"CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o" \
"CMakeFiles/native_server.dir/src/shared/b64/encode.c.o" \
"CMakeFiles/native_server.dir/src/shared/b64/decode.c.o" \
"CMakeFiles/native_server.dir/src/engine/command.cpp.o" \
"CMakeFiles/native_server.dir/src/engine/server.cpp.o" \
"CMakeFiles/native_server.dir/src/engine/worldio.cpp.o" \
"CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o" \
"CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o"

# External object files for target native_server
native_server_EXTERNAL_OBJECTS =

native_server: CMakeFiles/native_server.dir/src/shared/crypto.cpp.o
native_server: CMakeFiles/native_server.dir/src/shared/stream.cpp.o
native_server: CMakeFiles/native_server.dir/src/shared/tools.cpp.o
native_server: CMakeFiles/native_server.dir/src/shared/cJSON.c.o
native_server: CMakeFiles/native_server.dir/src/shared/microtar.c.o
native_server: CMakeFiles/native_server.dir/src/shared/b64/buffer.c.o
native_server: CMakeFiles/native_server.dir/src/shared/b64/encode.c.o
native_server: CMakeFiles/native_server.dir/src/shared/b64/decode.c.o
native_server: CMakeFiles/native_server.dir/src/engine/command.cpp.o
native_server: CMakeFiles/native_server.dir/src/engine/server.cpp.o
native_server: CMakeFiles/native_server.dir/src/engine/worldio.cpp.o
native_server: CMakeFiles/native_server.dir/src/fpsgame/entities.cpp.o
native_server: CMakeFiles/native_server.dir/src/fpsgame/server.cpp.o
native_server: CMakeFiles/native_server.dir/build.make
native_server: CMakeFiles/native_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/coal/Desktop/Coding/C/cardboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable native_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/native_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/native_server.dir/build: native_server
.PHONY : CMakeFiles/native_server.dir/build

CMakeFiles/native_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/native_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/native_server.dir/clean

CMakeFiles/native_server.dir/depend:
	cd /home/coal/Desktop/Coding/C/cardboard && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/coal/Desktop/Coding/C/cardboard /home/coal/Desktop/Coding/C/cardboard /home/coal/Desktop/Coding/C/cardboard /home/coal/Desktop/Coding/C/cardboard /home/coal/Desktop/Coding/C/cardboard/CMakeFiles/native_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/native_server.dir/depend

