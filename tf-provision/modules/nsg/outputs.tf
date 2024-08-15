# Output the ID of the network security group
output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}