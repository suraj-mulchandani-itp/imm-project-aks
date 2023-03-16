variable "resource_group_name" {
  type    = string
  default = "imm-aks-rg"
}

variable "location" {
  type    = string
  default = "Central India"
}

variable "display_name" {
  type    = string
  default = "imm-ad-group"
}

variable "security_enabled" {
  type    = bool
  default = true
}

variable "aks-cluster-name" {
  type    = string
  default = "imm-aks-cluster"
}

variable "dns_prefix" {
  type    = string
  default = "imm-aks-cluster-dns"
}

variable "kubernetes_version" {
  type    = string
  default = "1.24.9"
}

variable "automatic_channel_upgrade" {
  type    = string
  default = "patch"
}

variable "default_node_pool_name" {
  type    = string
  default = "agentpool"
}

variable "vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

variable "enable_auto_scaling" {
  type    = bool
  default = true
}

variable "identity_type" {
  type    = string
  default = "SystemAssigned"
}

variable "azure_policy_enabled" {
  type    = bool
  default = true
}

variable "managed" {
  type    = bool
  default = true
}

variable "azure_rbac_enabled" {
  type    = bool
  default = true
}

variable "network_plugin" {
  type    = string
  default = "azure"
}

variable "network_mode" {
  type    = string
  default = "transparent"
}

variable "network_policy" {
  type    = string
  default = "azure"
}

variable "dns_service_ip" {
  type    = string
  default = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  type    = string
  default = "172.17.0.1/16"
}

variable "service_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "max_count" {
  type    = number
  default = 2
}

variable "min_count" {
  type    = number
  default = 1
}

variable "node_count" {
  type    = number
  default = 1
}