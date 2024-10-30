cmake_minimum_required(VERSION 3.1)

project(generic)

file(GLOB SRCS "*.c")

# Find required libraries like GStreamer, pthread, etc.
find_package(PkgConfig REQUIRED)

pkg_check_modules(GST REQUIRED gstreamer-1.0>=1.4 gstreamer-base-1.0>=1.4)

# Add include directories
include_directories(${CMAKE_SOURCE_DIR}/src /usr/local/include ${GST_INCLUDE_DIRS})

# Add library directories
link_directories(/usr/local/lib ${GST_LIBRARY_DIRS})

# Add the executable target
add_executable(generic ${SRCS})

# Link libraries: peer (libpeer.so), pthread, and GStreamer
target_link_libraries(generic peer pthread ${GST_LIBRARIES})

# Set RPATH to ensure runtime linking of the shared libraries
set_target_properties(generic PROPERTIES INSTALL_RPATH "/usr/local/lib")

# Ensure the linker finds the shared libraries at runtime
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)



# Old CmakeLists.txt

# project(sample)

# file(GLOB SRCS "*.c")

# include_directories(${CMAKE_SOURCE_DIR}/src)

# add_executable(sample ${SRCS})

# target_link_libraries(sample peer pthread)