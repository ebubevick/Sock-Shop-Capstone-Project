# Output the ID of the AKS cluster
output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

# Output the fully qualified domain name (FQDN) of the AKS cluster
output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}

# Output the node resource group of the AKS cluster
output "aks_node_rg" {
  value = azurerm_kubernetes_cluster.aks.node_resource_group
}

output "principal_id" {
  value = azurerm_kubernetes_cluster.aks.identity[0].principal_id
}
