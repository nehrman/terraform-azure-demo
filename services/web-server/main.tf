data "azurerm_subnet" "subnet" {
    name                 = "${var.tf_az_subnet_name}"
    virtual_network_name = "${var.tf_az_net_name}"
    resource_group_name  = "${var.tf_az_rg_name}"
}

module "azureinstance" {
  source               = "../../../modules/azure-instance"
  tf_az_name           = "demo"
  tf_az_env            = "dev"
  tf_az_location       = "westeurope"
  tf_az_nb_instance    = "2"
  tf_az_prefix         = "web"
  tf_az_instance_type  = "Standard_A1_v2"
  tf_az_subnet_id      = "${data.azurerm_subnet.subnet.id}"
  tf_az_net_name       = "dev-demo-net"
  tf_az_rg_name        = "dev-demo-rg"
  tf_az_lb_bckpool_id  = ["/subscriptions/74b1892f-cae9-4821-acae-476c6e131cf1/resourceGroups/staging-test-rg/providers/Microsoft.Network/loadBalancers/staging-test-lb/backendAddressPools/staging-test-bck-pool"]

  tf_az_tags = {
    environment = "dev"
  }
}
