variable az_name {}
variable az_env {
  description = "Define the environment where resources will be created"
}

variable az_location {
  description = "Define the Azure Region to deploy the resources"
  default = "francecentral"
}
variable az_nb_instance {
  default = 2
}
variable az_prefix {}
variable az_instance_type {}

variable az_tags {
  type = "map"
}
