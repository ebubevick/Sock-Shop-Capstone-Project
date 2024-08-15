# Configure the Azure provider
provider "azurerm" {
  features {} # Enables the provider to work with all features; this is required but can be left empty
}

# Specify the required provider configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" # Specifies the source of the azurerm provider
      version = "3.62.1"            # Locks the provider version to 3.62.1 to ensure compatibility
    }
  }
}
