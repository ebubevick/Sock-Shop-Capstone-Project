# Variable for the name of the Virtual Network
variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

# Variable for the address space of the Virtual Network
variable "address_space" {
  description = "The address space of the Virtual Network"
  type        = list(string)
}

# Variable for the name of the Subnet
variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

# Variable for the address prefixes of the Subnet
variable "address_prefixes" {
  description = "The address prefixes of the Subnet"
  type        = list(string)
}

# Variable for the allocation method of the Public IP
variable "allocation_method" {
  description = "The allocation method of the Public IP"
  type        = string
}

# Variable for the SKU of the Public IP
variable "sku" {
  description = "The SKU of the Public IP"
  type        = string
}

# Variable for the location of the resources
variable "location" {
  description = "The location of the resources"
  type        = string
}

# Variable for the name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "aks_principal_id" {
  description = "The principal ID of the AKS cluster"
  type        = string
}
