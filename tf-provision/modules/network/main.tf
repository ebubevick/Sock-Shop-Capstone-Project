# Define a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Define a subnet within the virtual network
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefixes
}

# Assign Network Contributor role to the managed identity on the virtual network
resource "azurerm_role_assignment" "network_contributor" {
  principal_id   = var.aks_principal_id
  role_definition_name = "Network Contributor"
  scope          = azurerm_virtual_network.vnet.id
}

# Assign Network Contributor role to the managed identity on the specific subnet
resource "azurerm_role_assignment" "network_contributor_subnet" {
  principal_id   = var.aks_principal_id
  role_definition_name = "Network Contributor"
  scope          = azurerm_subnet.subnet.id
}