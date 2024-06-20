output "cluster_name" {
    value = hcp_vault_cluster.sanofi_hcp_vault.cluster_id
}

output "project_id" {
    value = data.hcp_project.sanofi.resource_id
}

output "project_name" {
    value = data.hcp_project.sanofi.name
}

output "vault_public_url" {
    value = hcp_vault_cluster.sanofi_hcp_vault.vault_public_endpoint_url
}
output "dw_namespace" {
    value = vault_namespace.dw_ns.path
}
output "dw_admin_user" {
    value = vault_generic_endpoint.dw_admin.write_data["id"]
}