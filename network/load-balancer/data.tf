data "terraform_remote_state" "rg" {
  backend = "atlas"

  config {
    name = "Hashicorp-neh-Demo/arm-resourcegroup-${var.az_env}"
  }
}
