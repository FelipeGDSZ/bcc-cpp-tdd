CXX = g++
CXXFLAGS = -Wall -std=c++11
SRC_DIR = src
BIN_DIR = bin
TEST_DIR = test

# Lista todos os .cpp de src, exceto o main.cpp (para não dar erro de múltiplo main)
SRCS_LIB = $(filter-out $(SRC_DIR)/main.cpp, $(wildcard $(SRC_DIR)/*.cpp))
SRC_MAIN = $(SRC_DIR)/main.cpp
TEST_MAIN = $(TEST_DIR)/main.cpp

TARGET = $(BIN_DIR)/app.exe
TEST_TARGET = $(BIN_DIR)/testeRegressivo.exe

all: $(TARGET)

$(TARGET): $(SRCS_LIB) $(SRC_MAIN)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@

# Alvo para compilar os testes
testes: $(SRCS_LIB) $(TEST_MAIN)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $^ -o $@

clean:
	rm -rf $(BIN_DIR)/*
