data "hcp_project" "sanofi" {
    project = var.hcp_project_id
}
data "hcp_hvn" "sanofi" {
  hvn_id = var.hvn_id
  project_id = data.hcp_project.sanofi.resource_id
}
#resource "hcp_hvn" "learn_hcp_vault_hvn" {
  #hvn_id         = data.hcp_hvn.sanofi.id
  #cloud_provider = var.cloud_provider
  #region         = var.region
#}

resource "hcp_vault_cluster" "learn_hcp_vault" {
  hvn_id     = data.hcp_hvn.sanofi.id
  cluster_id = var.cluster_id
  tier       = var.tier
  # public_endpoint = true
}