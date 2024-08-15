# Define the name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "vick-capstone-rg"
}

# Define the location for the resource group and other resources
variable "location" {
  description = "The location for the resource group and other resources"
  type        = string
  default     = "UK South"
}

# Define the name of the Azure Container Registry
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "capstoneacr"
}

# Define the name of the AKS cluster
variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "vick-capstone-aks-cluster"
}

# Define the number of nodes in the AKS node pool
variable "node_count" {
  description = "The number of nodes in the AKS node pool"
  type        = number
  default     = 2
}

# Define the size of the VMs in the AKS node pool
variable "vm_size" {
  description = "The size of the VMs in the AKS node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

# Define the name of the Virtual Network
variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "aks-vnet"
}

# Define the address space of the Virtual Network
variable "address_space" {
  description = "The address space of the Virtual Network"
  type        = list(string)
  default     = ["192.168.0.0/16"]
}

# Define the name of the Subnet
variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
  default     = "aks-subnet"
}

# Define the address prefixes of the Subnet
variable "address_prefixes" {
  description = "The address prefixes of the Subnet"
  type        = list(string)
  default     = ["192.168.1.0/24"]
}

# Define the name of the Public IP
variable "public_ip_name" {
  description = "The name of the Public IP"
  type        = string
  default     = "nginx-ingress-pip"
}

# Define the allocation method of the Public IP
variable "allocation_method" {
  description = "The allocation method of the Public IP"
  type        = string
  default     = "Static"
}

# Define the SKU of the Public IP
variable "sku" {
  description = "The SKU of the Public IP"
  type        = string
  default     = "Standard"
}

# Define the name of the Network Security Group
variable "nsg_name" {
  description = "The name of the Network Security Group"
  type        = string
  default     = "aks-nsg"
}
