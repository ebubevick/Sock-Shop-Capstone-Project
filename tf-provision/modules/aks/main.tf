# Define an Azure Kubernetes Service (AKS) cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  # Uncomment to specify the Kubernetes version
  # kubernetes_version  = var.kubernetes_version
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name           = var.node_pool_name
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
    node_labels         = {
        environment = "capstone-production"
    } 
}

  # Use system-assigned managed identity
  identity {
    type = "SystemAssigned"
  }

  # Configure the network profile
  network_profile {
    load_balancer_sku = "basic"
    network_policy    = "calico"
    network_plugin    = "azure"
  }
}

# Save the kubeconfig file locally
resource "local_file" "kubeconfig" {
  depends_on = [azurerm_kubernetes_cluster.aks]
  filename   = "kubeconfig"
  content    = azurerm_kubernetes_cluster.aks.kube_config_raw
}

# Assign the AcrPull role to the AKS cluster
resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = var.acr_id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = true
}
