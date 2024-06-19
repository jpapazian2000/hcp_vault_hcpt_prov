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
  auth_login {
    path = "auth/userpass/login/${var.vault_admin_user}"

    parameters = {
      password = var.vault_admin_password
    }
  }
} 

resource "vault_namespace" "allergy_ns" {
  path = "admin/a"
  custom_metadata = "allergy BU"
}
resource "vault_namespace" "ccf_ns" {
  path = "admin/ccf"
  custom_metadata = "cough, cold and flu BU"
}
resource "vault_namespace" "dw_ns" {
  path = "admin/dw"
  custom_metadata = "digital wellness BU"
}
resource "vault_namespace" "pc_ns" {
  path = "admin/pc"
  custom_metadata = "pain care BU"
}
resource "vault_namespace" "pmw_ns" {
  path = "admin/pmw"
  custom_metadata = "physical and mental wellness BU"
}
#enable an auth method (userpass for the demo), and create a 'security admin' user
#this user will perform tasks such as ns creation,
resource "vault_auth_backend" "userpass" {
  namespace = "admin/dw"
  type = "userpass"
  path = "chc_cybersecu"
}