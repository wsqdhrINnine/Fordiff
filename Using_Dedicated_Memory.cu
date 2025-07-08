using LoadT = at::native::memory::aligned_vector<scalar_t, ILP>;
using StoreT = at::native::memory::aligned_vector<outscalar_t, ILP>;
gradOutput += static_cast<int64_t>(blockIdx.x) * classes;
const int64_t shift = ((uint64_t)gradInput) % ALIGN_BYTES / sizeof(scalar_t);
const int64_t output_shift = ((uint64_t)output) % ALIGN_BYTES / sizeof(outscalar_t);
const int64_t grad_output_shift = ((uint64_t)gradOutput) % ALIGN_BYTES / sizeof(outscalar_t);
