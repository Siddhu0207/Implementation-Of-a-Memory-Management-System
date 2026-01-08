# Compiler Settings
CXX = g++
CXXFLAGS = -std=c++11 -Wall -Iinclude

# Directories
SRC_DIR = src
OBJ_DIR = build
BIN_DIR = bin

# Source Discovery (Wildcard finds all .cpp files in src/)
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
# Object Generation (Converts src/X.cpp to build/X.o)
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRCS))

# Target Executable
TARGET = $(BIN_DIR)/mem_sim

# Default Rule
all: $(TARGET)

# Linking Rule
$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	@echo "Linking..."
	$(CXX) $(OBJS) -o $(TARGET)
	@echo "Build successful! Run with: ./bin/mem_sim"

# Compilation Rule
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(dir $@)
	@echo "Compiling $<..."
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Cleanup
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

.PHONY: all clean 