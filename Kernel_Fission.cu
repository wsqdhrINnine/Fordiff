template <typename T, typename T_ACC>
__global__ void GammaBetaBackwardCUDAKernel(
   int64_t M, int64_t N, const T* dY, const T* X, const T_ACC* mean, const T_ACC* rstd, T* dg, T* db) {
  alignas(sizeof(double)) extern __shared__ char s_data1[];
  T_ACC* s_data_typed = reinterpret_cast<T_ACC*>(&s_data1);
  T_ACC* s_dg;
  T_ACC* s_db;
  const int64_t j = ((int64_t) blockIdx.x) * blockDim.x + threadIdx.x;
  T_ACC dg_sum = 0;
  T_ACC db_sum = 0;
  if (j < N) {
    constexpr int unroll_factor = 8;
    T_ACC mean_reg;
    T_ACC rstd_reg;
    T dY_reg;
    T X_reg;
    // Main Loop
      ...
  }
