data "hcp_project" "sanofi" {
    project = var.hcp_project_id
}
data "hcp_hvn" "sanofi" {
  hvn_id = var.hvn_id
  project_id = data.hcp_project.sanofi.resource_id
}

resource "hcp_vault_cluster" "sanofi_hcp_vault" {
  hvn_id     = data.hcp_hvn.sanofi.hvn_id
  cluster_id = var.cluster_id
  tier       = var.tier
  public_endpoint = true
  #metrics_config {
    #grafana_user = var.metric-user
    #grafana_password = var.metric-pwd
    #grafana_endpoint = var.metric-url
  #}
  #audit_log_config {
    #grafana_user = var.audit-user
    #grafana_password = var.metric-pwd
    #grafana_endpoint = var.audit-url
  #}
}
