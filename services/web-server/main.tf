data "terraform_remote_state" "rg" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/webapp1-resourcegroup-${var.az_env}"
  }
}

data "terraform_remote_state" "lb" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/webapp1-loadbalancer-${var.az_env}"
  }
}

module "azureinstance" {
  source                     = "app.terraform.io/Hashicorp-neh-Demo/instance/azure"
  version                    = "0.2"
  tf_az_name          = "${var.az_name}"
  tf_az_env           = "${var.az_env}""dev"
  tf_az_location      = "${var.az_location}""westeurope"
  tf_az_nb_instance   = "${var.az_nb_instance}""2"
  tf_az_prefix        = "${var.az_prefix}""web"
  tf_az_instance_type = "${var.az_instance_type}""Standard_A1_v2"
  tf_az_subnet_id     = "${data.azurerm_subnet.subnet.id}"
  tf_az_net_name      = "${var.az_name}""dev-demo-net"
  tf_az_rg_name       = "${data.terraform_remote_state.rg.resource_group_name}"
  tf_az_lb_bckpool_id = "

  tf_az_tags = {
    environment = "dev"
  }
}
