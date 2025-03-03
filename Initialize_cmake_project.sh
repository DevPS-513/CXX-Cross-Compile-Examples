
rm -rf build 
mkdir build src
rm -rf   CMakeLists.txt
touch CMakeLists.txt
touch src/main.cpp

echo 'cmake_minimum_required(VERSION 2.6)' >> CMakeLists.txt
echo 'project(MyProject)' >> CMakeLists.txt
echo 'add_executable(myexec src/main.cpp)' >>CMakeLists.txt

