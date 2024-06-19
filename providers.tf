terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "4.2.0"
    }
  }
}

provider "vault" {
  address = hcp_vault_cluster.sanofi_hcp_vault.vault_public_endpoint_url
  auth_login_userpass {
    namespace = "admin"
    username = var.vault_admin_user
    password = var.vault_admin_password
  }
} 