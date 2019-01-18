module "instance" {
  source              = "app.terraform.io/Hashicorp-neh-Demo/instance/azure"
  version             = "1.0.6"
  tf_az_name          = "${var.az_name}"
  tf_az_env           = "${var.az_env}"
  tf_az_location      = "${var.az_location}"
  tf_az_nb_instance   = "${var.az_nb_instance}"
  tf_az_prefix        = "${var.az_prefix}"
  tf_az_instance_type = "${var.az_instance_type}"
  tf_az_subnet_id     = "${data.terraform_remote_state.rg.*.subnets_id}"
  tf_az_net_name      = "${data.terraform_remote_state.rg.virtual_network_name}"
  tf_az_rg_name       = "${data.terraform_remote_state.rg.resource_group_name}"
  tf_az_lb_bckpool_id = "${data.terraform_remote_state.lb.load_balancer_backend_pool_id}"

  tf_az_tags = "${var.az_tags}"
}
