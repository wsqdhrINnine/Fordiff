at::parallel_for(0, N, 0, [&](int64_t start, int64_t end) {
      for (const auto n : c10::irange(start, end)) {
        const scalar_t *grid_ptr_N = grid_ptr + n * grid_sN;
        const scalar_t *inp_ptr_N = inp_ptr + n * inp_sN;
        ...}
