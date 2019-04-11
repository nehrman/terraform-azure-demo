data "terraform_remote_state" "rg" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/arm-resourcegroup-${var.az_env}"
  }
}

data "terraform_remote_state" "lb" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/arm-loadbalancer-${var.az_env}"
  }
}
