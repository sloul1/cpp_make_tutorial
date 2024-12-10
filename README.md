# Example for compiling C++ code with multiple source files

This C++ code compiling example is also version control exercise of the Tampere University 
of Applied Sciences included in Bachelor of Engineering studies (Information and Communications Technology).  

- When executed program calculates square of given number.  

- Afterwards program is expanded to calculate volume of cube (also known as regular hexahedron) with same user given number.  

Code is created and tested with Ubuntu Workstation 24.04.1 LTS with 
Visual Studio Code as editor. Code can be compiled using VS Code's terminal or Ubuntu's own terminal.

VS Code documentation has install instructions for Ubuntu and Debian based distros at:  
https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions  
...or you can use script below I have created according to documentation:  
https://github.com/sloul1/script/blob/main/install-vscode-ubuntu.sh

## 1. Check your operating system version.
  
Open terminal by pressing Ctrl + Alt + T keys simultaneously.  

OS version can be checked by command:
```shell
lsb_release -a
```
Example print:
```shell
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 24.04.1 LTS
Release:	24.04
Codename:	noble
```
## 2. Check and install and dependencies.
```shell
whereis build-essential git
```
If build essential and git are not installed update repositories' package lists and install build-essential and git packages by:
```shell
sudo apt update && sudo apt install build-essential git -y
```
In our example build-essential packet installs:  

gcc: The GNU Compiler Collection, which compiles C and C++ code.  
g++: The compiler for C++ programs based on GCC.  
make: The program that executes the commands specified in a Makefile to build software from source.  
libc6dev: GNU C Library: Development Libraries and Header Files  
or  
libc-dev: virtual package provided by libc6-dev  

More info on packages of your Ubuntu version can be found at: https://packages.ubuntu.com/  
## 3. Clone this repository from https://github.com/sloul1/cpp_make_tutorial.git
Code:
```shell
git clone https://github.com/sloul1/cpp_make_tutorial.git
```
## 4. Run Makefile
Makefile can be ran by commanding:
```shell
make
```
As result few new files are created (main main.o compute.o).  
Make note that .gitignore file is used for ignoring these and other unnecessary files.  
```shell
g++ -Wall -g -c main.cpp
g++ -Wall -g -c compute.cpp
g++ -Wall -g -o main main.o compute.o
```
New file "main" can be executed with number 3:
```shell
./main 3
```
Which gives 9 as result (square of 3). 
```shell
9
```
Files created can be removed afterwards by command:  
```shell
make clean
```
Resulting:
```shell
rm -f main.o compute.o main
```
## 5. Added code for calculating volume of cube
Added code for calculating volume of cube can be checked from 'additions' file.  
After running 'make' again main program calculates also cube volume:
```shell
make
```
```shell
./main 3
```
resulting:
```shell
9
27
```