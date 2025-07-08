if (row < num_rows) {
  ...
  for (int s = num_threads_x, d = 1; s >= 1; s >>= 1, d <<= 1) {
    if (row < num_rows && threadIdx.x < s) {
      int offset = (2 * threadIdx.x + 1) * d - 1;
      binary_op_update(row_buf[offset], row_buf[offset + d], row_idx_buf[offset], row_idx_buf[offset + d], binary_op);
    }}}
