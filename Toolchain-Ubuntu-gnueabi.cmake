# Sample toolchain file for building for ARM from an Ubuntu Linux system.
#
# Typical usage:
#    *) install cross compiler: `sudo apt-get install gcc-arm-linux-gnueabi`
#    *) cd build
#    *) cmake -DCMAKE_TOOLCHAIN_FILE=~/Toolchain-Ubuntu-gnueabi.cmake ..

set(CMAKE_SYSTEM_NAME Linux)
set(TOOLCHAIN_PREFIX arm-linux-gnueabi)

# cross compilers to use for C and C++
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)

# target environment on the build host system
#   set 1st to dir with the cross compiler's C/C++ headers/libs
set(CMAKE_FIND_ROOT_PATH /usr/${TOOLCHAIN_PREFIX})

# modify default behavior of FIND_XXX() commands to
# search for headers/libs in the target environment and
# search for programs in the build host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
