data "terraform_remote_state" "rg" {
  backend = "remote"

  config = {
    organization = "Hashicorp-neh-Demo"

    workspaces = {
      name = "arm-resourcegroup-${var.az_env}"
    }  
  }
}

data "terraform_remote_state" "lb" {
  backend = "remote"

  config = {
    organization = "Hashicorp-neh-Demo"

    workspaces = {
      name = "arm-loadbalancer-${var.az_env}"
    }
  }
}
