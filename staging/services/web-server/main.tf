data "azurerm_subnet" "subnet" {
    name                 = "${var.tf_az_subnet_name}"
    virtual_network_name = "${var.tf_az_net_name}"
    resource_group_name  = "${var.tf_az_rg_name}"
}

module "azureinstance" {
  source            = "../../../modules/azure-instance"
  tf_az_name        = "test"
  tf_az_env         = "staging"
  tf_az_location    = "westeurope"
  tf_az_nb_instance = "3"
  tf_az_prefix      = "web"
  tf_az_subnet_id   = "${data.azurerm_subnet.subnet.id}"
  tf_az_net_name    = "staging-test-net"
  tf_az_rg_name     = "staging-test-rg"

  tf_az_tags = {
    environment = "staging"
  }
}
