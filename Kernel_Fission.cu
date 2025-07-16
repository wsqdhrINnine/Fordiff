template <typename T, typename T_ACC>
__global__ void GammaBetaBackwardCUDAKernel(
   int64_t M, int64_t N, const T* dY, const T* X, const T_ACC* mean, const T_ACC* rstd, T* dg, T* db) {
  ...
  if (j < N) {// Main Loop}
