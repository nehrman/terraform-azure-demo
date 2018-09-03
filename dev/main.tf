module "azure-rg" {
  source                     = "../modules/azure-rg"
  tf_az_name                 = "test"
  tf_az_env                  = "dev"
  tf_az_location             = "westeurope"
  tf_az_net_addr_space       = "10.0.0.0/16"
  tf_az_subnet_prefixes      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  tf_az_subnet_names         = ["subnet1", "subnet2", "subnet3"]
  tf_az_storage_account_name = "devsa"

  tf_az_tags = {
    environment = "staging"
  }
}
