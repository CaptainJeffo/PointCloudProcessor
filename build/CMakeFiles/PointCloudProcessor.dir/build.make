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
CMAKE_SOURCE_DIR = /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build

# Include any dependencies generated for this target.
include CMakeFiles/PointCloudProcessor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PointCloudProcessor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PointCloudProcessor.dir/flags.make

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o: CMakeFiles/PointCloudProcessor.dir/flags.make
CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o: ../src/CloudGrabber.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o -c /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/CloudGrabber.cpp

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/CloudGrabber.cpp > CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.i

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/CloudGrabber.cpp -o CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.s

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.requires:
.PHONY : CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.requires

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.provides: CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.requires
	$(MAKE) -f CMakeFiles/PointCloudProcessor.dir/build.make CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.provides.build
.PHONY : CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.provides

CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.provides.build: CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o: CMakeFiles/PointCloudProcessor.dir/flags.make
CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o: ../src/PointCloudGrabber.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o -c /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/PointCloudGrabber.cpp

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/PointCloudGrabber.cpp > CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.i

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/src/PointCloudGrabber.cpp -o CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.s

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.requires:
.PHONY : CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.requires

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.provides: CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.requires
	$(MAKE) -f CMakeFiles/PointCloudProcessor.dir/build.make CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.provides.build
.PHONY : CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.provides

CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.provides.build: CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o

# Object files for target PointCloudProcessor
PointCloudProcessor_OBJECTS = \
"CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o" \
"CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o"

# External object files for target PointCloudProcessor
PointCloudProcessor_EXTERNAL_OBJECTS =

PointCloudProcessor: CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o
PointCloudProcessor: CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o
PointCloudProcessor: /usr/lib/libboost_system-mt.so
PointCloudProcessor: /usr/lib/libboost_filesystem-mt.so
PointCloudProcessor: /usr/lib/libboost_thread-mt.so
PointCloudProcessor: /usr/lib/libboost_date_time-mt.so
PointCloudProcessor: /usr/lib/libboost_iostreams-mt.so
PointCloudProcessor: /usr/lib/libboost_serialization-mt.so
PointCloudProcessor: /usr/lib/libpcl_common.so
PointCloudProcessor: /usr/lib/libflann_cpp_s.a
PointCloudProcessor: /usr/lib/libpcl_kdtree.so
PointCloudProcessor: /usr/lib/libpcl_octree.so
PointCloudProcessor: /usr/lib/libpcl_search.so
PointCloudProcessor: /usr/lib/libOpenNI.so
PointCloudProcessor: /usr/lib/libvtkCommon.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkRendering.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkHybrid.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkCharts.so.5.8.0
PointCloudProcessor: /usr/lib/libpcl_io.so
PointCloudProcessor: /usr/lib/libpcl_sample_consensus.so
PointCloudProcessor: /usr/lib/libpcl_filters.so
PointCloudProcessor: /usr/lib/libpcl_visualization.so
PointCloudProcessor: /usr/lib/libpcl_outofcore.so
PointCloudProcessor: /usr/lib/libpcl_features.so
PointCloudProcessor: /usr/lib/libpcl_segmentation.so
PointCloudProcessor: /usr/lib/libpcl_people.so
PointCloudProcessor: /usr/lib/libpcl_registration.so
PointCloudProcessor: /usr/lib/libpcl_recognition.so
PointCloudProcessor: /usr/lib/libpcl_keypoints.so
PointCloudProcessor: /usr/lib/libqhull.so
PointCloudProcessor: /usr/lib/libpcl_surface.so
PointCloudProcessor: /usr/lib/libpcl_tracking.so
PointCloudProcessor: /usr/lib/libpcl_apps.so
PointCloudProcessor: /usr/lib/libboost_system-mt.so
PointCloudProcessor: /usr/lib/libboost_filesystem-mt.so
PointCloudProcessor: /usr/lib/libboost_thread-mt.so
PointCloudProcessor: /usr/lib/libboost_date_time-mt.so
PointCloudProcessor: /usr/lib/libboost_iostreams-mt.so
PointCloudProcessor: /usr/lib/libboost_serialization-mt.so
PointCloudProcessor: /usr/lib/libqhull.so
PointCloudProcessor: /usr/lib/libOpenNI.so
PointCloudProcessor: /usr/lib/libflann_cpp_s.a
PointCloudProcessor: /usr/lib/libvtkCommon.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkRendering.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkHybrid.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkCharts.so.5.8.0
PointCloudProcessor: /usr/lib/libpcl_common.so
PointCloudProcessor: /usr/lib/libpcl_kdtree.so
PointCloudProcessor: /usr/lib/libpcl_octree.so
PointCloudProcessor: /usr/lib/libpcl_search.so
PointCloudProcessor: /usr/lib/libpcl_io.so
PointCloudProcessor: /usr/lib/libpcl_sample_consensus.so
PointCloudProcessor: /usr/lib/libpcl_filters.so
PointCloudProcessor: /usr/lib/libpcl_visualization.so
PointCloudProcessor: /usr/lib/libpcl_outofcore.so
PointCloudProcessor: /usr/lib/libpcl_features.so
PointCloudProcessor: /usr/lib/libpcl_segmentation.so
PointCloudProcessor: /usr/lib/libpcl_people.so
PointCloudProcessor: /usr/lib/libpcl_registration.so
PointCloudProcessor: /usr/lib/libpcl_recognition.so
PointCloudProcessor: /usr/lib/libpcl_keypoints.so
PointCloudProcessor: /usr/lib/libpcl_surface.so
PointCloudProcessor: /usr/lib/libpcl_tracking.so
PointCloudProcessor: /usr/lib/libpcl_apps.so
PointCloudProcessor: /usr/lib/libvtkViews.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkInfovis.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkWidgets.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkHybrid.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkParallel.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkVolumeRendering.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkRendering.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkGraphics.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkImaging.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkIO.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkFiltering.so.5.8.0
PointCloudProcessor: /usr/lib/libvtkCommon.so.5.8.0
PointCloudProcessor: /usr/lib/libvtksys.so.5.8.0
PointCloudProcessor: CMakeFiles/PointCloudProcessor.dir/build.make
PointCloudProcessor: CMakeFiles/PointCloudProcessor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable PointCloudProcessor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PointCloudProcessor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PointCloudProcessor.dir/build: PointCloudProcessor
.PHONY : CMakeFiles/PointCloudProcessor.dir/build

CMakeFiles/PointCloudProcessor.dir/requires: CMakeFiles/PointCloudProcessor.dir/src/CloudGrabber.cpp.o.requires
CMakeFiles/PointCloudProcessor.dir/requires: CMakeFiles/PointCloudProcessor.dir/src/PointCloudGrabber.cpp.o.requires
.PHONY : CMakeFiles/PointCloudProcessor.dir/requires

CMakeFiles/PointCloudProcessor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PointCloudProcessor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PointCloudProcessor.dir/clean

CMakeFiles/PointCloudProcessor.dir/depend:
	cd /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build /home/robotics/Desktop/PCL_Workspace/PointCloudProcessor/build/CMakeFiles/PointCloudProcessor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PointCloudProcessor.dir/depend

