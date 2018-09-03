output "azurerm_lb_id" {
  description = "the id for the azurerm_lb resource"
value = "${azurerm_lb.lb.id}"
}

output "azurerm_public_ip_address" {
 description = "the ip address for the azurerm_lb_public_ip resource"
  value       = "${azurerm_public_ip.lb.*.ip_address}"
}