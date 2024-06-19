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

resource "vault_namespace" "allergy_ns" {
  path = "a"
  custom_metadata = {
    type = "allergy BU"
  }
}
resource "vault_namespace" "ccf_ns" {
  path = "ccf"
  custom_metadata = {
    type = "cough, clod and flu BU"
  }
}
resource "vault_namespace" "dw_ns" {
  path = "dw"
  custom_metadata = {
    type = "digital wellness BU"
  }
}
resource "vault_namespace" "pc_ns" {
  path = "pc"
  custom_metadata = {
    type = "pain care BU"
  }
}
resource "vault_namespace" "pmw_ns" {
  path = "pmw"
  custom_metadata = {
    type = "physical and mental wellness BU"
  }
}
#enable an auth method (userpass for the demo), and create a 'security admin' user
#this user will perform tasks such as ns creation,
resource "vault_auth_backend" "userpass" {
  namespace = "admin/dw"
  type = "userpass"
  #path = "chc_cybersecu"
}