# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -g

# Target executable
TARGET = main

# Object files
OBJ = main.o compute.o

# Rule to build the target
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJ)

# Rule to compile main.cpp
main.o: main.cpp compute.h
	$(CXX) $(CXXFLAGS) -c main.cpp

# Rule to compile compute.cpp
compute.o: compute.cpp compute.h
	$(CXX) $(CXXFLAGS) -c compute.cpp

# Clean rule to remove object files and the executable
clean:
	rm -f $(OBJ) $(TARGET)