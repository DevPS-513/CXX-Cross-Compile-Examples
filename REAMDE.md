
# Tutorial on compiling from x86 to arm when there is a dependancy

prints "hello from depedancy1" which is also cross compiled, example
shows when moving the .so file to the linked location the app will run on the Pi (Arm32) when compiled in a x86 environment

``` 
pi@raspberrypi:~ $ ./myapp
./myapp: error while loading shared libraries: libhello.so: cannot open shared object file: No such file or directory
pi@raspberrypi:~ $ sudo cp libhello.so /usr/lib/
pi@raspberrypi:~ $ ./myapp
hello from dependancy1
Hello from main.cpp




https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads (see if using same version as on pi works )
