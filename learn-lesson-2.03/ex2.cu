#include <stdio.h>

__global__ void hello_from_gpu()
{
    const int bid = blockIdx.x;
    const int tid = threadIdx.x;

    const int id = threadIdx.x + blockIdx.x * blockDim.x; 
    printf("Hello World from block %d and thread %d, global id %d of GPU\n", bid, tid, id);
}


int main(void)
{
    hello_from_gpu<<<13, 6>>>();
    cudaDeviceSynchronize();

    return 0;
}