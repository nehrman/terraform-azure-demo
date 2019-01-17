module "rg" {
  source                     = "app.terraform.io/Hashicorp-neh-Demo/rg/azure"
  version                    = "0.1"
  tf_az_name                 = "${var.az_name}"
  tf_az_env                  = "${var.az_env}"
  tf_az_location             = "${var.az_location}"
  tf_az_net_addr_space       = "${var.az_net_addr_space}"
  tf_az_subnet_prefixes      = "${var.az_subnet_prefixes}"
  tf_az_subnet_names         = "${var.az_subnet_names }"
  tf_az_storage_account_name = "${var.az_storage_account_name}"

  tf_az_tags = {
    environment = "dev"
  }
}

output "resource_group_name" {
  value = "${module.rg.resource_group_name}"
}

output "virtual_network_name" {
  value = "${module.rg.virtual_network_name}"
}

output "subnets_name" {
  value = "${module.rg.virtual_network_subnets}"
}
