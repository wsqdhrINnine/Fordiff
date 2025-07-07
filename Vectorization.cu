for (IndexType linearIndex = blockIdx.x * blockDim.x + threadIdx.x;
    linearIndex < totalSize;
    linearIndex += gridDim.x * blockDim.x) {...}
