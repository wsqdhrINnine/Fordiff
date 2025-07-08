const bool row_exists = row < num_rows;
if (row_exists) {
  ...
  for (uint32_t s = 1; s <= num_threads_x; s <<= 1) {
    if (row_exists) {
      uint32_t a = (threadIdx.x / s) * (2 * s) + s;
      uint32_t ti = a + (threadIdx.x % s);
      uint32_t si = a - 1;
      binary_op_update(row_buf[si], row_buf[ti], row_idx_buf[si], row_idx_buf[ti], binary_op);}}}
