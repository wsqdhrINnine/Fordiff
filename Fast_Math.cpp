Vectorized<float> one(1.0);
Vectorized<float> two(2.0);
Vectorized<float> m0 = maximum(a0, b0);
Vectorized<float> m1 = maximum(a1, b1);
a0 = Vectorized<float>::blendv(m0 + (one + two.pow((a0 - b0).abs().neg())).log2(), a0, (a0 == b0) & (a0.abs() == inf));
