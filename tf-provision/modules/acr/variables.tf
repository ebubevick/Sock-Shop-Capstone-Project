# Variable for the name of the Azure Container Registry
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

# Variable for the name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Variable for the location of the resources
variable "location" {
  description = "The location of the resources"
  type        = string
}
