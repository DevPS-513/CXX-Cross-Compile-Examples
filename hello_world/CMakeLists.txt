cmake_minimum_required(VERSION 2.6)
project(MyProject)


# Add the executable target
add_executable(myapp src/main.cpp )

# Specify the include directories
include_directories(myapp PUBLIC /usr/include/hello)

# # Find the hello library
find_library(HELLO_LIB NAMES hello PATHS /usr/lib/hello )

if(HELLO_LIB)
    message(STATUS "Found hello library: ${HELLO_LIB}")
else()
    message(FATAL_ERROR "Could not find hello library")
endif()

# # # Link the hello library and the C++ standard library
target_link_libraries(myapp ${HELLO_LIB})
#target_link_libraries(myapp /workspaces/1-Compiling-in-Linux-gcc/dep1/build/libhello.so)












# set(CMAKE_SYSTEM_NAME Linux)
# set(CMAKE_SYSTEM_PROCESSOR arm)

# set(XDIR /home/maxbw2774/21-Arm-Tutorial/1-Compiling-in-Linux-gcc/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-linux-gnueabihf)

# set(CMAKE_C_COMPILER ${XDIR}/bin/arm-none-linux-gnueabihf-gcc)
# set(CMAKE_CXX_COMPILER ${XDIR}/bin/arm-none-linux-gnueabihf-g++)
