# Variable for the name of the AKS cluster
variable "cluster_name" {
  description = "The name of the AKS cluster"
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

# Variable for the DNS prefix for the AKS cluster
variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

# Variable for the name of the node pool
variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

# Variable for the number of nodes in the node pool
variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
}

# Variable for the size of the VMs in the node pool
variable "vm_size" {
  description = "The size of the VMs in the node pool"
  type        = string
}

# Variable for the ID of the Azure Container Registry
variable "acr_id" {
  description = "The ID of the Azure Container Registry"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the AKS cluster will be deployed"
  type        = string
}
