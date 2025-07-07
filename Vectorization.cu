constexpr bool kPack4 = (sizeof(T) == 2);
constexpr int kElemsPerVec = kPack4 ? 4 : 1;
for (IndexType vecLinear = (blockIdx.x * blockDim.x + threadIdx.x) * kElemsPerVec;
    vecLinear < totalSize;
    vecLinear += gridDim.x * blockDim.x * kElemsPerVec) {
IndexType linearIndex = vecLinear;
...}
