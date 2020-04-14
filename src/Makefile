
CXX=g++
INC=-I/usr/local/cuda/include
LIBS=-L/usr/local/cuda/lib64 -lcudart 

all: cuda_wrapper.o main.o cuda_test

cuda_wrapper.o: cuda_wrapper.h cuda_wrapper.cu
	nvcc -c cuda_wrapper.cu

main.o: cuda_wrapper.o 
	g++ -c main.cpp $(INC)

cuda_test: main.o
	g++ -o cuda_test main.o cuda_wrapper.o $(LIBS) 

.PHONY: clean

clean: 
	rm *.o
