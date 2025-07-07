if (pos_weight.defined()) {
  // pos_weight need to be broadcasted, thus mul(target) is not inplace.
  auto log_weight = (pos_weight - 1).mul(target).add_(1);
  loss = (1 - target).mul_(input).sub_(log_weight.mul_(at::log_sigmoid(input)));
} else {
  loss = (1 - target).mul_(input).sub_(at::log_sigmoid(input));
}
