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