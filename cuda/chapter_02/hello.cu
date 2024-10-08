#include<cstdio>
using namespace std;

__global__ void helloFromGPU(void) {

    // get the block index
    const int bx = blockIdx.x;
    const int by = blockIdx.y;
    const int bz = blockIdx.z;

    // #get the thread index
    const int tx = threadIdx.x;
    const int ty = threadIdx.y;
    const int tz = threadIdx.z;

    printf("gpu: hello from block (%d, %d, %d) thread (%d, %d, %d)!\n", bx, by, bz, tx, ty, tz);
}

int main(void) {
    printf("Hello World from nvcc!\n");
    const dim3 blockSize(2, 4);
    const dim3 gridSize (2, 3, 4);
    // grid size is 2x3x4 = 24 blocks
    helloFromGPU<<<gridSize, blockSize>>>();
    cudaDeviceSynchronize();
    return 0;
}
// output
// gpu: hello from block (1, 0, 2) thread (0, 0, 0)!
// gpu: hello from block (1, 0, 2) thread (1, 0, 0)!
// gpu: hello from block (1, 0, 2) thread (0, 1, 0)!
// gpu: hello from block (1, 0, 2) thread (1, 1, 0)!
// gpu: hello from block (1, 0, 2) thread (0, 2, 0)!
// gpu: hello from block (1, 0, 2) thread (1, 2, 0)!
// gpu: hello from block (1, 0, 2) thread (0, 3, 0)!
// gpu: hello from block (1, 0, 2) thread (1, 3, 0)!
// gpu: hello from block (1, 0, 1) thread (0, 0, 0)!
// gpu: hello from block (1, 0, 1) thread (1, 0, 0)!
// gpu: hello from block (1, 0, 1) thread (0, 1, 0)!
// gpu: hello from block (1, 0, 1) thread (1, 1, 0)!
// gpu: hello from block (1, 0, 1) thread (0, 2, 0)!
// gpu: hello from block (1, 0, 1) thread (1, 2, 0)!
// gpu: hello from block (1, 0, 1) thread (0, 3, 0)!
// gpu: hello from block (1, 0, 1) thread (1, 3, 0)!
// gpu: hello from block (0, 1, 2) thread (0, 0, 0)!
// gpu: hello from block (0, 1, 2) thread (1, 0, 0)!
// gpu: hello from block (0, 1, 2) thread (0, 1, 0)!
// gpu: hello from block (0, 1, 2) thread (1, 1, 0)!
// gpu: hello from block (0, 1, 2) thread (0, 2, 0)!
// gpu: hello from block (0, 1, 2) thread (1, 2, 0)!
// gpu: hello from block (0, 1, 2) thread (0, 3, 0)!
// gpu: hello from block (0, 1, 2) thread (1, 3, 0)!
// gpu: hello from block (0, 1, 1) thread (0, 0, 0)!
// gpu: hello from block (0, 1, 1) thread (1, 0, 0)!
// gpu: hello from block (0, 1, 1) thread (0, 1, 0)!
// gpu: hello from block (0, 1, 1) thread (1, 1, 0)!
// gpu: hello from block (0, 1, 1) thread (0, 2, 0)!
// gpu: hello from block (0, 1, 1) thread (1, 2, 0)!
// gpu: hello from block (0, 1, 1) thread (0, 3, 0)!
// gpu: hello from block (0, 1, 1) thread (1, 3, 0)!
// gpu: hello from block (1, 0, 3) thread (0, 0, 0)!
// gpu: hello from block (1, 0, 3) thread (1, 0, 0)!
// gpu: hello from block (1, 0, 3) thread (0, 1, 0)!
// gpu: hello from block (1, 0, 3) thread (1, 1, 0)!
// gpu: hello from block (1, 0, 3) thread (0, 2, 0)!
// gpu: hello from block (1, 0, 3) thread (1, 2, 0)!
// gpu: hello from block (1, 0, 3) thread (0, 3, 0)!
// gpu: hello from block (1, 0, 3) thread (1, 3, 0)!
// gpu: hello from block (0, 1, 3) thread (0, 0, 0)!
// gpu: hello from block (0, 1, 3) thread (1, 0, 0)!
// gpu: hello from block (0, 1, 3) thread (0, 1, 0)!
// gpu: hello from block (0, 1, 3) thread (1, 1, 0)!
// gpu: hello from block (0, 1, 3) thread (0, 2, 0)!
// gpu: hello from block (0, 1, 3) thread (1, 2, 0)!
// gpu: hello from block (0, 1, 3) thread (0, 3, 0)!
// gpu: hello from block (0, 1, 3) thread (1, 3, 0)!
// gpu: hello from block (1, 1, 2) thread (0, 0, 0)!
// gpu: hello from block (1, 1, 2) thread (1, 0, 0)!
// gpu: hello from block (1, 1, 2) thread (0, 1, 0)!
// gpu: hello from block (1, 1, 2) thread (1, 1, 0)!
// gpu: hello from block (1, 1, 2) thread (0, 2, 0)!
// gpu: hello from block (1, 1, 2) thread (1, 2, 0)!
// gpu: hello from block (1, 1, 2) thread (0, 3, 0)!
// gpu: hello from block (1, 1, 2) thread (1, 3, 0)!
// gpu: hello from block (0, 2, 2) thread (0, 0, 0)!
// gpu: hello from block (0, 2, 2) thread (1, 0, 0)!
// gpu: hello from block (0, 2, 2) thread (0, 1, 0)!
// gpu: hello from block (0, 2, 2) thread (1, 1, 0)!
// gpu: hello from block (0, 2, 2) thread (0, 2, 0)!
// gpu: hello from block (0, 2, 2) thread (1, 2, 0)!
// gpu: hello from block (0, 2, 2) thread (0, 3, 0)!
// gpu: hello from block (0, 2, 2) thread (1, 3, 0)!
// gpu: hello from block (1, 1, 1) thread (0, 0, 0)!
// gpu: hello from block (1, 1, 1) thread (1, 0, 0)!
// gpu: hello from block (1, 1, 1) thread (0, 1, 0)!
// gpu: hello from block (1, 1, 1) thread (1, 1, 0)!
// gpu: hello from block (1, 1, 1) thread (0, 2, 0)!
// gpu: hello from block (1, 1, 1) thread (1, 2, 0)!
// gpu: hello from block (1, 1, 1) thread (0, 3, 0)!
// gpu: hello from block (1, 1, 1) thread (1, 3, 0)!
// gpu: hello from block (0, 2, 1) thread (0, 0, 0)!
// gpu: hello from block (0, 2, 1) thread (1, 0, 0)!
// gpu: hello from block (0, 2, 1) thread (0, 1, 0)!
// gpu: hello from block (0, 2, 1) thread (1, 1, 0)!
// gpu: hello from block (0, 2, 1) thread (0, 2, 0)!
// gpu: hello from block (0, 2, 1) thread (1, 2, 0)!
// gpu: hello from block (0, 2, 1) thread (0, 3, 0)!
// gpu: hello from block (0, 2, 1) thread (1, 3, 0)!
// gpu: hello from block (0, 1, 0) thread (0, 0, 0)!
// gpu: hello from block (0, 1, 0) thread (1, 0, 0)!
// gpu: hello from block (0, 1, 0) thread (0, 1, 0)!
// gpu: hello from block (0, 1, 0) thread (1, 1, 0)!
// gpu: hello from block (0, 1, 0) thread (0, 2, 0)!
// gpu: hello from block (0, 1, 0) thread (1, 2, 0)!
// gpu: hello from block (0, 1, 0) thread (0, 3, 0)!
// gpu: hello from block (0, 1, 0) thread (1, 3, 0)!
// gpu: hello from block (0, 0, 2) thread (0, 0, 0)!
// gpu: hello from block (0, 0, 2) thread (1, 0, 0)!
// gpu: hello from block (0, 0, 2) thread (0, 1, 0)!
// gpu: hello from block (0, 0, 2) thread (1, 1, 0)!
// gpu: hello from block (0, 0, 2) thread (0, 2, 0)!
// gpu: hello from block (0, 0, 2) thread (1, 2, 0)!
// gpu: hello from block (0, 0, 2) thread (0, 3, 0)!
// gpu: hello from block (0, 0, 2) thread (1, 3, 0)!
// gpu: hello from block (1, 2, 2) thread (0, 0, 0)!
// gpu: hello from block (1, 2, 2) thread (1, 0, 0)!
// gpu: hello from block (1, 2, 2) thread (0, 1, 0)!
// gpu: hello from block (1, 2, 2) thread (1, 1, 0)!
// gpu: hello from block (1, 2, 2) thread (0, 2, 0)!
// gpu: hello from block (1, 2, 2) thread (1, 2, 0)!
// gpu: hello from block (1, 2, 2) thread (0, 3, 0)!
// gpu: hello from block (1, 2, 2) thread (1, 3, 0)!
// gpu: hello from block (1, 2, 3) thread (0, 0, 0)!
// gpu: hello from block (1, 2, 3) thread (1, 0, 0)!
// gpu: hello from block (1, 2, 3) thread (0, 1, 0)!
// gpu: hello from block (1, 2, 3) thread (1, 1, 0)!
// gpu: hello from block (1, 2, 3) thread (0, 2, 0)!
// gpu: hello from block (1, 2, 3) thread (1, 2, 0)!
// gpu: hello from block (1, 2, 3) thread (0, 3, 0)!
// gpu: hello from block (1, 2, 3) thread (1, 3, 0)!
// gpu: hello from block (1, 0, 0) thread (0, 0, 0)!
// gpu: hello from block (1, 0, 0) thread (1, 0, 0)!
// gpu: hello from block (1, 0, 0) thread (0, 1, 0)!
// gpu: hello from block (1, 0, 0) thread (1, 1, 0)!
// gpu: hello from block (1, 0, 0) thread (0, 2, 0)!
// gpu: hello from block (1, 0, 0) thread (1, 2, 0)!
// gpu: hello from block (1, 0, 0) thread (0, 3, 0)!
// gpu: hello from block (1, 0, 0) thread (1, 3, 0)!
// gpu: hello from block (0, 0, 1) thread (0, 0, 0)!
// gpu: hello from block (0, 0, 1) thread (1, 0, 0)!
// gpu: hello from block (0, 0, 1) thread (0, 1, 0)!
// gpu: hello from block (0, 0, 1) thread (1, 1, 0)!
// gpu: hello from block (0, 0, 1) thread (0, 2, 0)!
// gpu: hello from block (0, 0, 1) thread (1, 2, 0)!
// gpu: hello from block (0, 0, 1) thread (0, 3, 0)!
// gpu: hello from block (0, 0, 1) thread (1, 3, 0)!
// gpu: hello from block (1, 2, 0) thread (0, 0, 0)!
// gpu: hello from block (1, 2, 0) thread (1, 0, 0)!
// gpu: hello from block (1, 2, 0) thread (0, 1, 0)!
// gpu: hello from block (1, 2, 0) thread (1, 1, 0)!
// gpu: hello from block (1, 2, 0) thread (0, 2, 0)!
// gpu: hello from block (1, 2, 0) thread (1, 2, 0)!
// gpu: hello from block (1, 2, 0) thread (0, 3, 0)!
// gpu: hello from block (1, 2, 0) thread (1, 3, 0)!
// gpu: hello from block (1, 1, 3) thread (0, 0, 0)!
// gpu: hello from block (1, 1, 3) thread (1, 0, 0)!
// gpu: hello from block (1, 1, 3) thread (0, 1, 0)!
// gpu: hello from block (1, 1, 3) thread (1, 1, 0)!
// gpu: hello from block (1, 1, 3) thread (0, 2, 0)!
// gpu: hello from block (1, 1, 3) thread (1, 2, 0)!
// gpu: hello from block (1, 1, 3) thread (0, 3, 0)!
// gpu: hello from block (1, 1, 3) thread (1, 3, 0)!
// gpu: hello from block (0, 2, 3) thread (0, 0, 0)!
// gpu: hello from block (0, 2, 3) thread (1, 0, 0)!
// gpu: hello from block (0, 2, 3) thread (0, 1, 0)!
// gpu: hello from block (0, 2, 3) thread (1, 1, 0)!
// gpu: hello from block (0, 2, 3) thread (0, 2, 0)!
// gpu: hello from block (0, 2, 3) thread (1, 2, 0)!
// gpu: hello from block (0, 2, 3) thread (0, 3, 0)!
// gpu: hello from block (0, 2, 3) thread (1, 3, 0)!
// gpu: hello from block (0, 0, 3) thread (0, 0, 0)!
// gpu: hello from block (0, 0, 3) thread (1, 0, 0)!
// gpu: hello from block (0, 0, 3) thread (0, 1, 0)!
// gpu: hello from block (0, 0, 3) thread (1, 1, 0)!
// gpu: hello from block (0, 0, 3) thread (0, 2, 0)!
// gpu: hello from block (0, 0, 3) thread (1, 2, 0)!
// gpu: hello from block (0, 0, 3) thread (0, 3, 0)!
// gpu: hello from block (0, 0, 3) thread (1, 3, 0)!
// gpu: hello from block (1, 2, 1) thread (0, 0, 0)!
// gpu: hello from block (1, 2, 1) thread (1, 0, 0)!
// gpu: hello from block (1, 2, 1) thread (0, 1, 0)!
// gpu: hello from block (1, 2, 1) thread (1, 1, 0)!
// gpu: hello from block (1, 2, 1) thread (0, 2, 0)!
// gpu: hello from block (1, 2, 1) thread (1, 2, 0)!
// gpu: hello from block (1, 2, 1) thread (0, 3, 0)!
// gpu: hello from block (1, 2, 1) thread (1, 3, 0)!
// gpu: hello from block (1, 1, 0) thread (0, 0, 0)!
// gpu: hello from block (1, 1, 0) thread (1, 0, 0)!
// gpu: hello from block (1, 1, 0) thread (0, 1, 0)!
// gpu: hello from block (1, 1, 0) thread (1, 1, 0)!
// gpu: hello from block (1, 1, 0) thread (0, 2, 0)!
// gpu: hello from block (1, 1, 0) thread (1, 2, 0)!
// gpu: hello from block (1, 1, 0) thread (0, 3, 0)!
// gpu: hello from block (1, 1, 0) thread (1, 3, 0)!
// gpu: hello from block (0, 2, 0) thread (0, 0, 0)!
// gpu: hello from block (0, 2, 0) thread (1, 0, 0)!
// gpu: hello from block (0, 2, 0) thread (0, 1, 0)!
// gpu: hello from block (0, 2, 0) thread (1, 1, 0)!
// gpu: hello from block (0, 2, 0) thread (0, 2, 0)!
// gpu: hello from block (0, 2, 0) thread (1, 2, 0)!
// gpu: hello from block (0, 2, 0) thread (0, 3, 0)!
// gpu: hello from block (0, 2, 0) thread (1, 3, 0)!
// gpu: hello from block (0, 0, 0) thread (0, 0, 0)!
// gpu: hello from block (0, 0, 0) thread (1, 0, 0)!
// gpu: hello from block (0, 0, 0) thread (0, 1, 0)!
// gpu: hello from block (0, 0, 0) thread (1, 1, 0)!
// gpu: hello from block (0, 0, 0) thread (0, 2, 0)!
// gpu: hello from block (0, 0, 0) thread (1, 2, 0)!
// gpu: hello from block (0, 0, 0) thread (0, 3, 0)!
// gpu: hello from block (0, 0, 0) thread (1, 3, 0)!