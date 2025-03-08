cmake_minimum_required(VERSION 2.6)
project(MyProject)


# Add the library target
add_library(hello SHARED ${PROJECT_SOURCE_DIR}/src/hello.cpp)


# # Specify the installation directories
install(TARGETS hello
        LIBRARY DESTINATION ${CMAKE_SYSROOT}/usr/lib/hello)

# Specify the installation directory for the header file
install(FILES src/hello.hpp
        DESTINATION ${CMAKE_SYSROOT}/usr/include/hello)


# install(TARGETS hello
# LIBRARY DESTINATION ${XDIR}/arm-none-linux-gnueabihf/lib)



# message(CMAKE_SYSROOT is:${CMAKE_SYSROOT})


# # set(XDIR /workspaces/1-Compiling-in-Linux-gcc/arm-gnu-toolchain-12.2.rel1-x86_64-arm-none-linux-gnueabihf)

# # set(CMAKE_C_COMPILER ${XDIR}/bin/arm-none-linux-gnueabihf-gcc)
# # set(CMAKE_CXX_COMPILER ${XDIR}/bin/arm-none-linux-gnueabihf-g++)
