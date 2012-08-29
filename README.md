About cmake-toolchains
======================

This repository contains a number of toolchain files for cmake that allow using
Ubuntu to build to a number of popular other systems. Most notably, ARM (soft
and hard float) and Windows (32 and 64bit)


Usage
=====

The idea is to pass the pathname of the desired toolchain to
CMAKE_TOOLCHAIN_FILE. You can simply use cmake -D to do it in one go:

    $ cmake -DCMAKE_TOOLCHAIN_FILE=/path/to/toolchain.cmake
