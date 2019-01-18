data "terraform_remote_state" "rg" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/webapp1-resourcegroup-${var.az_env}"
  }
}