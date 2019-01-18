output "resource_group_id" {
  value = "${module.rg.resource_group_id}"
}

output "resource_group_name" {
  value = "${module.rg.resource_group_name}"
}

output "virtual_network_name" {
  value = "${module.rg.virtual_network_name}"
}

output "virtual_network_id" {
  value = "${module.rg.virtual_network_id}"
}

output "subnets_name" {
  value = "${module.rg.virtual_network_subnets_name}"
}

output "subnets_id" {
  value = "${module.rg.virtual_network_subnets_id}"
}
