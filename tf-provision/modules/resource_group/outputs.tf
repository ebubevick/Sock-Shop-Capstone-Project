# Output the name of the resource group
output "resource_group_name" {
  value = azurerm_resource_group.rg.name  # The name of the resource group
}

# Output the location of the resource group
output "resource_group_location" {
  value = azurerm_resource_group.rg.location  # The location of the resource group
}
