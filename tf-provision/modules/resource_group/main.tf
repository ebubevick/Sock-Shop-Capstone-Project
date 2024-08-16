# Create an Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name  # The name of the resource group
  location = var.location             # The location/region where the resource group will be created
}
