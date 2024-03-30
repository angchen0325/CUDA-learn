#include <stdio.h>

__global__ void hello_from_gpu()
{
    printf("'Hello World' from the the GPU\n");
}


int main(void)
{
    hello_from_gpu<<<3, 3>>>();
    cudaDeviceSynchronize();

    return 0;
}