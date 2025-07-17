Tensor indices_mult_cpu = at::from_blob(
  indices_mult_cpu_vec.data(),
  indices.options().device(kCPU).dtype(kLong));
Tensor indices_mult = indices_mult_cpu.to(indices.device(), /*non_blocking=*/false);
return indices.mul(indices_mult).sum(0);

