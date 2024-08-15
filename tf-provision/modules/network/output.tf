# Output the ID of the virtual network
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

# Output the ID of the subnet
output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

