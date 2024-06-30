variable "hvn_id" {
  description = "The ID of the HCP HVN."
  type        = string
  default     = "learn-hcp-vault-hvn"
}

variable "cluster_id" {
  description = "The ID of the HCP Vault cluster."
  type        = string
  default     = "sanofi-vault-cluster"
}
variable "hcp_project_id" {
    description = "sanofi project"
    type = string 
    default = "3ee83a5b-9068-4c8b-933b-70e4229ac3ac"
}

variable "region" {
  description = "The region of the HCP HVN and Vault cluster."
  type        = string
  default     = "francecentral"
}

variable "cloud_provider" {
  description = "The cloud provider of the HCP HVN and Vault cluster."
  type        = string
  default     = "azure"
}

variable "tier" {
  description = "Tier of the HCP Vault cluster. Valid options for tiers."
  type        = string
  default     = "starter"
}
variable "audit-user" {
  description = "username of the audit user for audit logs export in grafana"
  type        = string
}
#variable "audit-pwd" {
  #description = "pasword of the audit user for audit logs export in grafana"
  #type        = string
#}
variable "audit-url" {
  description = "endpoint of the audit log in grafana"
  type        = string
}
variable "metric-user" {
  description = "username of the  user for metrics export in grafana"
  type        = string
}
variable "metric-pwd" {
  description = "pasword of the user for metrics export in grafana"
  type        = string
}
variable "metric-url" {
  description = "metrics endpoint in grafana"
  type        = string
}
