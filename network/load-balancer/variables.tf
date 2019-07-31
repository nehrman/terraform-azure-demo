variable az_name {
  description = "Name"
}

variable az_env {
  description = "Define the environment where resources will be created"
}

variable az_location {
  description = "Define the Azure Region to deploy the resources"
  default = "francecentral"
}

variable az_ft_name {}

variable az_lb_probes_protocol {
  default = "Http"
}

variable az_lb_probes_path {
  default = "/"
}

variable az_lb_probes_port {}

variable az_lb_nb_probes {}

variable az_lb_rule_proto {}

variable az_lb_rule_ft_port {}

variable az_lb_rule_bck_port {}

variable az_tags {
  type = "map"
  default = {
    "test"= "test"
  }
}
