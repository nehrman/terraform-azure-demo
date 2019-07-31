# Use module "Instance" with appropriate variables to deploy Azure Virtual Machines

module "instance" {
  source              = "app.terraform.io/Hashicorp-neh-Demo/instance/azurerm"
  version             = "1.0.16"
  tf_az_name          = "${var.az_name}"
  tf_az_env           = "${var.az_env}"
  tf_az_location      = "${var.az_location}"
  tf_az_nb_instance   = "${var.az_nb_instance}"
  tf_az_prefix        = "${var.az_prefix}"
  tf_az_instance_type = "${var.az_instance_type}"
  tf_az_subnet_id     = "${data.terraform_remote_state.rg.outputs.subnets_id[0]}"
  tf_az_net_name      = "${data.terraform_remote_state.rg.outputs.virtual_network_name}"
  tf_az_rg_name       = "${data.terraform_remote_state.rg.outputs.resource_group_name}"
  tf_az_lb_bckpool_id = "${data.terraform_remote_state.lb.outputs.load_balancer_backend_pool_id}"

  tf_az_tags          = "${var.az_tags}"
}
