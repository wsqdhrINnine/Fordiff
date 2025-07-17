KernelLauncher<kernel_t>::launch(iter,
    // NOTE: capture by value required by CUDA
    [=] FUNCAPI (int64_t nnz_idx) -> int64_t {
    const auto* RESTRICT ptr_indices_dim = ptr_indices + nnz_idx * indices_nnz_stride;
    auto hash = static_cast<int64_t>(0);
    for (int64_t dim = 0; dim < sparse_dim; ++dim) {
      const auto dim_hash_coeff = hash_coeffs[dim];
      const auto dim_index = ptr_indices_dim[dim * indices_dim_stride];
      hash += dim_index * dim_hash_coeff;
    }
    return hash;
});
