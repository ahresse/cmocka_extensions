# SPDX-License-Identifier: MIT
cmake_minimum_required(VERSION 3.16)

project(examples LANGUAGES C)
set(INSTALL_UNIT_TESTS OFF)

add_subdirectory(src)
add_subdirectory(test/utest)
