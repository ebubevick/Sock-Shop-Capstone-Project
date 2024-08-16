# Create an Azure Resource Group
resource "azurerm_resource_group" "rg" {
  name     = length(data.azurerm_resource_group.existing_rg.id) == 0 ? 1 : 0  # The name of the resource group
  location = var.location             # The location/region where the resource group will be created
}
