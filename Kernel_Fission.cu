template<typename T, typename T_ACC>
void LaunchGammaBetaBackwardCUDAKernel(
    const T* dY_data, const T* X_data, const T_ACC* mean_data, const T_ACC* rstd_data, int64_t M, int64_t N, Tensor* dgamma, Tensor* dbeta, cudaStream_t cuda_stream) {
  constexpr int block_dim_x = 32;
  const int sm_count = at::cuda::getCurrentDeviceProperties()->multiProcessorCount;
  if (M > 64 * 1024 && N / block_dim_x < sm_count / 2) {
  //Compute partial sums for the gradient in the first pass
  //Then do a .sum(0) to do a final reduction.
   ...
} else {
// Normal main Loop
}
