# Output the ID of the Azure Container Registry (ACR)
output "acr_id" {
  value = azurerm_container_registry.acr.id
}

# Output the login server URL of the ACR
output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}