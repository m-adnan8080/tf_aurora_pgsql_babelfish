output "cluster_endpoint" {
  description = "Aurora Cluster Writer Endpoint"
  value = module.aurora.cluster_endpoint
}

output "cluster_reader_endpoint" {
  description = "Aurora Cluster Reader Endpoint"
  value = module.aurora.cluster_reader_endpoint
}

output "username" {
  description = "Aurora Cluster Master Username"
  value = module.aurora.cluster_master_username
  sensitive = true
}

output "password" {
  description = "Aurora Cluster Master Password"
  value = module.aurora.cluster_master_password
  sensitive = true
}

output "port" {
  description = "Aurora Cluster Port"
  value = module.aurora.cluster_port
}