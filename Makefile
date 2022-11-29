# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/lijiache2/Desktop/SpecHap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/lijiache2/Desktop/SpecHap

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Users/lijiache2/Desktop/SpecHap/CMakeFiles /mnt/c/Users/lijiache2/Desktop/SpecHap/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /mnt/c/Users/lijiache2/Desktop/SpecHap/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named BarcodeExtract

# Build rule for target.
BarcodeExtract: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 BarcodeExtract
.PHONY : BarcodeExtract

# fast build rule for target.
BarcodeExtract/fast:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/build
.PHONY : BarcodeExtract/fast

#=============================================================================
# Target rules for targets named SpecHap

# Build rule for target.
SpecHap: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SpecHap
.PHONY : SpecHap

# fast build rule for target.
SpecHap/fast:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/build
.PHONY : SpecHap/fast

barcode_extractor/BAMReader.o: barcode_extractor/BAMReader.cpp.o

.PHONY : barcode_extractor/BAMReader.o

# target to build an object file
barcode_extractor/BAMReader.cpp.o:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/BAMReader.cpp.o
.PHONY : barcode_extractor/BAMReader.cpp.o

barcode_extractor/BAMReader.i: barcode_extractor/BAMReader.cpp.i

.PHONY : barcode_extractor/BAMReader.i

# target to preprocess a source file
barcode_extractor/BAMReader.cpp.i:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/BAMReader.cpp.i
.PHONY : barcode_extractor/BAMReader.cpp.i

barcode_extractor/BAMReader.s: barcode_extractor/BAMReader.cpp.s

.PHONY : barcode_extractor/BAMReader.s

# target to generate assembly for a file
barcode_extractor/BAMReader.cpp.s:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/BAMReader.cpp.s
.PHONY : barcode_extractor/BAMReader.cpp.s

barcode_extractor/Barcode.o: barcode_extractor/Barcode.cpp.o

.PHONY : barcode_extractor/Barcode.o

# target to build an object file
barcode_extractor/Barcode.cpp.o:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/Barcode.cpp.o
.PHONY : barcode_extractor/Barcode.cpp.o

barcode_extractor/Barcode.i: barcode_extractor/Barcode.cpp.i

.PHONY : barcode_extractor/Barcode.i

# target to preprocess a source file
barcode_extractor/Barcode.cpp.i:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/Barcode.cpp.i
.PHONY : barcode_extractor/Barcode.cpp.i

barcode_extractor/Barcode.s: barcode_extractor/Barcode.cpp.s

.PHONY : barcode_extractor/Barcode.s

# target to generate assembly for a file
barcode_extractor/Barcode.cpp.s:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/Barcode.cpp.s
.PHONY : barcode_extractor/Barcode.cpp.s

barcode_extractor/main.o: barcode_extractor/main.cpp.o

.PHONY : barcode_extractor/main.o

# target to build an object file
barcode_extractor/main.cpp.o:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/main.cpp.o
.PHONY : barcode_extractor/main.cpp.o

barcode_extractor/main.i: barcode_extractor/main.cpp.i

.PHONY : barcode_extractor/main.i

# target to preprocess a source file
barcode_extractor/main.cpp.i:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/main.cpp.i
.PHONY : barcode_extractor/main.cpp.i

barcode_extractor/main.s: barcode_extractor/main.cpp.s

.PHONY : barcode_extractor/main.s

# target to generate assembly for a file
barcode_extractor/main.cpp.s:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/main.cpp.s
.PHONY : barcode_extractor/main.cpp.s

barcode_extractor/worker.o: barcode_extractor/worker.cpp.o

.PHONY : barcode_extractor/worker.o

# target to build an object file
barcode_extractor/worker.cpp.o:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/worker.cpp.o
.PHONY : barcode_extractor/worker.cpp.o

barcode_extractor/worker.i: barcode_extractor/worker.cpp.i

.PHONY : barcode_extractor/worker.i

# target to preprocess a source file
barcode_extractor/worker.cpp.i:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/worker.cpp.i
.PHONY : barcode_extractor/worker.cpp.i

barcode_extractor/worker.s: barcode_extractor/worker.cpp.s

.PHONY : barcode_extractor/worker.s

# target to generate assembly for a file
barcode_extractor/worker.cpp.s:
	$(MAKE) -f CMakeFiles/BarcodeExtract.dir/build.make CMakeFiles/BarcodeExtract.dir/barcode_extractor/worker.cpp.s
.PHONY : barcode_extractor/worker.cpp.s

frag_io.o: frag_io.cpp.o

.PHONY : frag_io.o

# target to build an object file
frag_io.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/frag_io.cpp.o
.PHONY : frag_io.cpp.o

frag_io.i: frag_io.cpp.i

.PHONY : frag_io.i

# target to preprocess a source file
frag_io.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/frag_io.cpp.i
.PHONY : frag_io.cpp.i

frag_io.s: frag_io.cpp.s

.PHONY : frag_io.s

# target to generate assembly for a file
frag_io.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/frag_io.cpp.s
.PHONY : frag_io.cpp.s

graph.o: graph.cpp.o

.PHONY : graph.o

# target to build an object file
graph.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/graph.cpp.o
.PHONY : graph.cpp.o

graph.i: graph.cpp.i

.PHONY : graph.i

# target to preprocess a source file
graph.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/graph.cpp.i
.PHONY : graph.cpp.i

graph.s: graph.cpp.s

.PHONY : graph.s

# target to generate assembly for a file
graph.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/graph.cpp.s
.PHONY : graph.cpp.s

hic_util.o: hic_util.cpp.o

.PHONY : hic_util.o

# target to build an object file
hic_util.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/hic_util.cpp.o
.PHONY : hic_util.cpp.o

hic_util.i: hic_util.cpp.i

.PHONY : hic_util.i

# target to preprocess a source file
hic_util.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/hic_util.cpp.i
.PHONY : hic_util.cpp.i

hic_util.s: hic_util.cpp.s

.PHONY : hic_util.s

# target to generate assembly for a file
hic_util.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/hic_util.cpp.s
.PHONY : hic_util.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/main.cpp.s
.PHONY : main.cpp.s

phaser.o: phaser.cpp.o

.PHONY : phaser.o

# target to build an object file
phaser.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/phaser.cpp.o
.PHONY : phaser.cpp.o

phaser.i: phaser.cpp.i

.PHONY : phaser.i

# target to preprocess a source file
phaser.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/phaser.cpp.i
.PHONY : phaser.cpp.i

phaser.s: phaser.cpp.s

.PHONY : phaser.s

# target to generate assembly for a file
phaser.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/phaser.cpp.s
.PHONY : phaser.cpp.s

results.o: results.cpp.o

.PHONY : results.o

# target to build an object file
results.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/results.cpp.o
.PHONY : results.cpp.o

results.i: results.cpp.i

.PHONY : results.i

# target to preprocess a source file
results.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/results.cpp.i
.PHONY : results.cpp.i

results.s: results.cpp.s

.PHONY : results.s

# target to generate assembly for a file
results.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/results.cpp.s
.PHONY : results.cpp.s

spectral.o: spectral.cpp.o

.PHONY : spectral.o

# target to build an object file
spectral.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/spectral.cpp.o
.PHONY : spectral.cpp.o

spectral.i: spectral.cpp.i

.PHONY : spectral.i

# target to preprocess a source file
spectral.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/spectral.cpp.i
.PHONY : spectral.cpp.i

spectral.s: spectral.cpp.s

.PHONY : spectral.s

# target to generate assembly for a file
spectral.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/spectral.cpp.s
.PHONY : spectral.cpp.s

tenx_util.o: tenx_util.cpp.o

.PHONY : tenx_util.o

# target to build an object file
tenx_util.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/tenx_util.cpp.o
.PHONY : tenx_util.cpp.o

tenx_util.i: tenx_util.cpp.i

.PHONY : tenx_util.i

# target to preprocess a source file
tenx_util.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/tenx_util.cpp.i
.PHONY : tenx_util.cpp.i

tenx_util.s: tenx_util.cpp.s

.PHONY : tenx_util.s

# target to generate assembly for a file
tenx_util.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/tenx_util.cpp.s
.PHONY : tenx_util.cpp.s

type.o: type.cpp.o

.PHONY : type.o

# target to build an object file
type.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/type.cpp.o
.PHONY : type.cpp.o

type.i: type.cpp.i

.PHONY : type.i

# target to preprocess a source file
type.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/type.cpp.i
.PHONY : type.cpp.i

type.s: type.cpp.s

.PHONY : type.s

# target to generate assembly for a file
type.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/type.cpp.s
.PHONY : type.cpp.s

util.o: util.cpp.o

.PHONY : util.o

# target to build an object file
util.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/util.cpp.o
.PHONY : util.cpp.o

util.i: util.cpp.i

.PHONY : util.i

# target to preprocess a source file
util.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/util.cpp.i
.PHONY : util.cpp.i

util.s: util.cpp.s

.PHONY : util.s

# target to generate assembly for a file
util.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/util.cpp.s
.PHONY : util.cpp.s

vcf_io.o: vcf_io.cpp.o

.PHONY : vcf_io.o

# target to build an object file
vcf_io.cpp.o:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/vcf_io.cpp.o
.PHONY : vcf_io.cpp.o

vcf_io.i: vcf_io.cpp.i

.PHONY : vcf_io.i

# target to preprocess a source file
vcf_io.cpp.i:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/vcf_io.cpp.i
.PHONY : vcf_io.cpp.i

vcf_io.s: vcf_io.cpp.s

.PHONY : vcf_io.s

# target to generate assembly for a file
vcf_io.cpp.s:
	$(MAKE) -f CMakeFiles/SpecHap.dir/build.make CMakeFiles/SpecHap.dir/vcf_io.cpp.s
.PHONY : vcf_io.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... install/local"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... BarcodeExtract"
	@echo "... SpecHap"
	@echo "... barcode_extractor/BAMReader.o"
	@echo "... barcode_extractor/BAMReader.i"
	@echo "... barcode_extractor/BAMReader.s"
	@echo "... barcode_extractor/Barcode.o"
	@echo "... barcode_extractor/Barcode.i"
	@echo "... barcode_extractor/Barcode.s"
	@echo "... barcode_extractor/main.o"
	@echo "... barcode_extractor/main.i"
	@echo "... barcode_extractor/main.s"
	@echo "... barcode_extractor/worker.o"
	@echo "... barcode_extractor/worker.i"
	@echo "... barcode_extractor/worker.s"
	@echo "... frag_io.o"
	@echo "... frag_io.i"
	@echo "... frag_io.s"
	@echo "... graph.o"
	@echo "... graph.i"
	@echo "... graph.s"
	@echo "... hic_util.o"
	@echo "... hic_util.i"
	@echo "... hic_util.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... phaser.o"
	@echo "... phaser.i"
	@echo "... phaser.s"
	@echo "... results.o"
	@echo "... results.i"
	@echo "... results.s"
	@echo "... spectral.o"
	@echo "... spectral.i"
	@echo "... spectral.s"
	@echo "... tenx_util.o"
	@echo "... tenx_util.i"
	@echo "... tenx_util.s"
	@echo "... type.o"
	@echo "... type.i"
	@echo "... type.s"
	@echo "... util.o"
	@echo "... util.i"
	@echo "... util.s"
	@echo "... vcf_io.o"
	@echo "... vcf_io.i"
	@echo "... vcf_io.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

