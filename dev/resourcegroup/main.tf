module "azurerg" {
  source                     = "../../modules/azure-rg"
  tf_az_name                 = "demo"
  tf_az_env                  = "dev"
  tf_az_location             = "westeurope"
  tf_az_net_addr_space       = "10.0.0.0/16"
  tf_az_subnet_prefixes      = ["10.0.1.0/24"]
  tf_az_subnet_names         = ["subnet1"]
  tf_az_storage_account_name = "devdemosa"

  tf_az_tags = {
    environment = "dev"
  }
}

output "resource_group_name" {
    value = "${module.azurerg.resource_group_name}"
}

output "virtual_network_name" {
    value = "${module.azurerg.virtual_network_name}"
}

output "subnets_name" {
    value = "${module.azurerg.virtual_network_subnets}"
}