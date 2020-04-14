#include <stdio.h> 
#include <stdlib.h> 
//#include <cuda.h> 

#include "cuda_wrapper.h"

__global__ void print_from_gpu(void)
{
	printf("Device:Hello World! from thread [%d, %d]\
		From device\n", threadIdx.x, blockIdx.x);	
}

namespace Wrapper
{
	void wrapper(void)
	{
		printf("Host: Hello, world!\n"); 
		print_from_gpu<<<2,1>>>(); 
		cudaDeviceSynchronize();
	}
}
