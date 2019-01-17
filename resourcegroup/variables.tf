variable subscription_id {
  description = "Azure Subscription ID"
}

variable client_id {
  description = "Azure Client ID"
}

variable client_secret {
  description = "Azure Client Secret"
}

variable tenant_id {
  description = "Azure Tenant ID"
}

variable az_name {
    description = "Name"
}

variable az_env {}

variable az_location {}

variable az_net_addr_space {}

variable az_subnet_prefixes {
    type = "list"
}

variable az_subnet_names {
    type = "list"
}

variable az_storage_account_name {}