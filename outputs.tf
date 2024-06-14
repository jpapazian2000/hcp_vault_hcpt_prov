output "cluster_name" {
    value = var.hcp_vault_cluster.cluster_id
}

output "project_id" {
    value = data.hcp_project.sanofi.resource_id
}

output "project_name" {
    value = data.hcp_project.sanofi.name
}

output "vault_public_url" {
    value = data.hcp_vault_cluster.vault_public_endpoint_url
}