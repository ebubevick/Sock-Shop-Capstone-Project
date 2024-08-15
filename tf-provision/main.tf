// Module for creating the resource group
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

// Module for creating the virtual network, subnet, and public IP
module "network" {
  source              = "./modules/network"
  cluster_name        = var.cluster_name
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  address_prefixes    = var.address_prefixes
  allocation_method   = var.allocation_method
  sku                 = var.sku
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  aks_principal_id    = module.aks.principal_id
}

// Module for creating the Azure Container Registry
module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
}

// Module for creating the Azure Kubernetes Service cluster
module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.cluster_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  dns_prefix          = "my-aks"
  node_pool_name      = "default"
  node_count          = var.node_count
  vm_size             = var.vm_size
  acr_id              = module.acr.acr_id
  subnet_id           = module.network.subnet_id
}

// Module for creating the Network Security Group and associating it with the subnet
module "nsg" {
  source              = "./modules/nsg"
  nsg_name            = var.nsg_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.network.subnet_id
}