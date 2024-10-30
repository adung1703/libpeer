# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/project3/libpeer/third_party/cJSON"
  "/project3/libpeer/cjson-prefix/src/cjson-build"
  "/project3/libpeer/cjson-prefix"
  "/project3/libpeer/cjson-prefix/tmp"
  "/project3/libpeer/cjson-prefix/src/cjson-stamp"
  "/project3/libpeer/cjson-prefix/src"
  "/project3/libpeer/cjson-prefix/src/cjson-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/project3/libpeer/cjson-prefix/src/cjson-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/project3/libpeer/cjson-prefix/src/cjson-stamp${cfgdir}") # cfgdir has leading slash
endif()
