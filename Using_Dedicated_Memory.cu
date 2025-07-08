auto smem_input_cache = reinterpret_cast<outscalar_t*>(smem);
auto smem_reduction_cache = reinterpret_cast<accscalar_t*>(smem + classes * sizeof(outscalar_t));
gradOutput += static_cast<int64_t>(blockIdx.x) * classes;
using LoadT = at::native::memory::aligned_vector<outscalar_t, ILP>;
const LoadT* const gradOutput_vec_ptr = reinterpret_cast<const LoadT*>(gradOutput);
LoadT* const smem_gradOutput_cache_vec_ptr = reinterpret_cast<LoadT*>(smem_input_cache);

