dim3 grid((2*max_target_length+1 + threads_target-1)/threads_target, (batch_size+threads_batch-1)/threads_batch);
