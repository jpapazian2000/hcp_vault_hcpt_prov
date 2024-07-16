output "cluster_name" {
    value = hcp_vault_cluster.customer_hcp_vault.cluster_id
}

output "project_id" {
    value = data.hcp_project.customer.resource_id
}

output "project_name" {
    value = data.hcp_project.customer.name
}

output "vault_public_url" {
    value = hcp_vault_cluster.customer_hcp_vault.vault_public_endpoint_url
}