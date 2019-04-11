variable az_name {
  description = "Name"
}

variable az_env {}

variable az_location {
  default = "francecentral"
}

variable az_net_addr_space {}

variable az_subnet_prefixes {
  type = "list"
}

variable az_subnet_names {
  type = "list"
}

variable az_storage_account_name {}

variable az_tags {
  type = "map"
  default = {
    "customer" = "toto"
    }
}
