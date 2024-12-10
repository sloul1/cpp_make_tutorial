# Example for compiling C++ code with multiple source files

This C++ code compiling example is also version control exercise of the Tampere University  
of Applied Sciences included in Bachelor of Engineering studies (Information and  
Communications Technology). When executed program calculates square of given number.  

Afterwards program is expanded to calculate volume of cube (also known as regular hexahedron) with same user given number.  

Code is created and tested with Ubuntu Workstation 24.04.1 LTS with  
Visual Studio Code as editor. Install instructions for VS Code can be found at  
https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions  
or use script that I have created accordingly in a link below.  
https://github.com/sloul1/script/blob/main/install-vscode-ubuntu.sh

Example consist of (how many?) steps.

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
whereis build-essential
```
If build essential is not installed update repositories' package lists and install build-essential package by:
```shell
sudo apt update && sudo apt install build-essential -y
```
In our example this installs:  

gcc: The GNU Compiler Collection, which compiles C and C++ code.  
g++: The compiler for C++ programs based on GCC.  
make: The program that executes the commands specified in a Makefile to build software from source.  
libc6dev: GNU C Library: Development Libraries and Header Files  
or  
libc-dev: virtual package provided by libc6-dev  

More info on packages of your Ubuntu version can be found at: https://packages.ubuntu.com/  
## 3. Run Makefile
Makefile can be ran by commanding.
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