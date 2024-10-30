# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/project3/libpeer/third_party/mbedtls"
  "/project3/libpeer/mbedtls-prefix/src/mbedtls-build"
  "/project3/libpeer/mbedtls-prefix"
  "/project3/libpeer/mbedtls-prefix/tmp"
  "/project3/libpeer/mbedtls-prefix/src/mbedtls-stamp"
  "/project3/libpeer/mbedtls-prefix/src"
  "/project3/libpeer/mbedtls-prefix/src/mbedtls-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/project3/libpeer/mbedtls-prefix/src/mbedtls-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/project3/libpeer/mbedtls-prefix/src/mbedtls-stamp${cfgdir}") # cfgdir has leading slash
endif()
