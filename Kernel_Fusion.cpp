auto max_val = (-input).clamp_min_(0);
if (pos_weight.defined()) {
    // pos_weight need to be broadcasted, thus mul(target) is not inplace.
    auto log_weight = (pos_weight - 1).mul(target).add_(1);
    loss = (1 - target).mul_(input).add_(log_weight.mul_(((-max_val).exp_().add_((-input - max_val).exp_())).log_().add_(max_val)));
} else {
    loss = (1 - target).mul_(input).add_(max_val).add_((-max_val).exp_().add_((-input -max_val).exp_()).log_());
}
