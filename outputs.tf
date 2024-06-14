output "cluster_name" {
    value = var.hcp_vault_cluster.sanofi_hcp_vault.cluster_id
}

output "project_id" {
    value = hcp_project.sanofi.resource_id
}

output "project_name" {
    value = data.hcp_project.sanofi.name
}

output "vault_public_url" {
    value = hcp_vault_cluster.sanofi_hcp_vault.vault_public_endpoint_url
}