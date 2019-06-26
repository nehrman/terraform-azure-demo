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

variable az_net_addr_space {
   description = "Define, via a list, the subnets prefixes. Must be in correlation with number or subnets"
   default = "10.0.0.0/8"
}

variable az_subnet_prefixes {
  description = "Define, via a list, the subnets prefixes. Must be in correlation with number or subnets"
  type = "list"
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable az_subnet_names {
  description = "Define, via a list, the name of subnets you wan to create"
  type = "list"
  default = ["subnet1","subnet2"]
}

variable az_storage_account_name {
  description = "Define the name of the Storage Account. Must e lowercase"
}

variable az_tags {
  description = "Define the tags used for your ressources"
  type = "map"
  default = {
    "customer" = "toto",
    "anothertag" = "anotherone"
    }
}
