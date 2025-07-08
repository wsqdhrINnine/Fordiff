Vectorized<float> inv_log_2_vec(inv_log_2);
Vectorized<float> m0 = maximum(a0, b0);
Vectorized<float> m1 = maximum(a1, b1);
a0 = Vectorized<float>::blendv(m0 + (a0 - b0).abs().neg().exp2().log1p() * inv_log_2_vec, a0, (a0 == b0) & (a0.abs() == inf));
