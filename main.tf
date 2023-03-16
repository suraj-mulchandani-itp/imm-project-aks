data "azuread_client_config" "current" {}

resource "azurerm_resource_group" "aks-resource-group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azuread_group" "aks-ad-group" {
  display_name     = var.display_name
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = var.security_enabled
}

resource "azurerm_kubernetes_cluster" "aks-cluster" {
  name                      = var.aks-cluster-name
  location                  = azurerm_resource_group.aks-resource-group.location
  resource_group_name       = azurerm_resource_group.aks-resource-group.name
  dns_prefix                = var.dns_prefix
  kubernetes_version        = var.kubernetes_version
  automatic_channel_upgrade = var.automatic_channel_upgrade
  azure_policy_enabled      = var.azure_policy_enabled

  default_node_pool {
    name                = var.default_node_pool_name
    vm_size             = var.vm_size
    enable_auto_scaling = var.enable_auto_scaling
    max_count           = var.max_count
    min_count           = var.min_count
    node_count          = var.node_count
  }

  identity {
    type = var.identity_type
  }

  azure_active_directory_role_based_access_control {
    managed            = var.managed
    azure_rbac_enabled = var.azure_rbac_enabled
  }

  network_profile {
    network_plugin     = var.network_plugin
    network_mode       = var.network_mode
    network_policy     = var.network_policy
    dns_service_ip     = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
    service_cidr       = var.service_cidr
  }
}