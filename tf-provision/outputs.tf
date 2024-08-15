// Output the name of the resource group
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

// Output the location of the resource group
output "resource_group_location" {
  value = module.resource_group.resource_group_location
}

// Output the ID of the Azure Container Registry (ACR)
output "acr_id" {
  value = module.acr.acr_id
}

// Output the login server URL for the Azure Container Registry (ACR)
output "acr_login_server" {
  value = module.acr.acr_login_server
}

// Output the ID of the Azure Kubernetes Service (AKS) cluster
output "aks_id" {
  value = module.aks.aks_id
}

// Output the Fully Qualified Domain Name (FQDN) of the Azure Kubernetes Service (AKS) cluster
output "aks_fqdn" {
  value = module.aks.aks_fqdn
}

// Output the node resource group of the Azure Kubernetes Service (AKS) cluster
output "aks_node_rg" {
  value = module.aks.aks_node_rg
}

// Output the ID of the Virtual Network (VNet)
output "vnet_id" {
  value = module.network.vnet_id
}

// Output the ID of the Subnet
output "subnet_id" {
  value = module.network.subnet_id
}

# // Output the ID of the Network Security Group (NSG)
output "nsg_id" {
  value = module.nsg.nsg_id
}

# output "kubernetes_cluster_name" {
#   value = azurerm_kubernetes_cluster.default.name
# }
