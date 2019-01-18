output "load_balancer_id" {
  value = "${module.lb.load_balancer_id}"
}

output "load_balancer_backend_pool_id" {
  value = "${module.lb.load_balancer_backend_pool_id}"
}

output "load_balancer_public_ip_address" {
  value = "${module.lb.load_balancer_public_ip_address}"
}
