data "terraform_remote_state" "rg" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/webapp1-resourcegroup-${var.az_env}"
  }
}

module "lb" {
  source                   = "app.terraform.io/Hashicorp-neh-Demo/lb/azure"
  version                  = "0.6"
  tf_az_name               = "${var.az_name}"
  tf_az_env                = "${var.az_env}"
  tf_az_location           = "${var.az_location}"
  tf_az_ft_name            = "${var.az_ft_name}"
  tf_az_lb_probes_port     = "${var.az_lb_probes_port}"
  tf_az_lb_probes_protocol = "${var.az_lb_probes_protocol}"
  tf_az_lb_probes_path     = "${var.az_lb_probes_path}"
  tf_az_lb_nb_probes       = "${var.az_lb_nb_probes}"
  tf_az_lb_rule_proto      = "${var.az_lb_rule_proto }"
  tf_az_lb_rule_ft_port    = "${var.az_lb_rule_ft_port }"
  tf_az_lb_rule_bck_port   = "${var.az_lb_rule_bck_port}"
  tf_az_rg_name            = "${data.terraform_remote_state.rg.resource_group_name}"

  tf_az_tags = "${var.az_tags}"
}

output "load_balancer_id" {
  value = "${module.lb.load_balancer_id}"
}

output "load_balancer_backend_pool_id" {
  value = "${module.lb.load_balancer_backend_pool_id}"
}

output "load_balancer_public_ip_address" {
  value = "${module.lb.load_balancer_public_ip_address}"
}
