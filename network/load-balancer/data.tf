data "terraform_remote_state" "rg" {
  backend = "remote"

  config = {
    organization = "Hashicorp-neh-Demo"

    workspaces = {
      name = "Hashicorp-neh-Demo/arm-resourcegroup-${var.az_env}"
    } 
  }
}
