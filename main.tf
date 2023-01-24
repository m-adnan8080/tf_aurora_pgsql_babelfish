module "aurora" {
  source                              = "terraform-aws-modules/rds-aurora/aws"
  name                                = var.aurora_name
  engine                              = var.engine
  engine_version                      = var.engine_version
  subnets                             = var.database_subnets
  vpc_id                              = var.vpc_id
  apply_immediately                   = var.apply_immediately
  skip_final_snapshot                 = var.skip_final_snapshot
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  allowed_cidr_blocks                 = var.allowed_cidr_blocks
  create_security_group               = var.create_security_group
  database_name                       = var.database_name
  final_snapshot_identifier_prefix    = var.final_snapshot_identifier_prefix
  deletion_protection                 = var.deletion_protection
  backup_retention_period             = var.backup_retention_period
  preferred_backup_window             = var.preferred_backup_window
  preferred_maintenance_window        = var.preferred_maintenance_window
  port                                = var.aurora_port
  monitoring_interval                 = var.monitoring_interval
  auto_minor_version_upgrade          = var.auto_minor_version_upgrade
  scaling_configuration               = var.scaling_configuration
  snapshot_identifier                 = var.snapshot_identifier
  storage_encrypted                   = var.storage_encrypted
  kms_key_id                          = var.kms_key_id
  enable_http_endpoint                = var.enable_http_endpoint
  performance_insights_enabled        = var.performance_insights_enabled
  performance_insights_kms_key_id     = var.performance_insights_kms_key_id
  global_cluster_identifier           = var.global_cluster_identifier
  engine_mode                         = var.engine_mode
  replication_source_identifier       = var.replication_source_identifier
  source_region                       = var.source_region
  vpc_security_group_ids              = var.vpc_security_group_ids
  predefined_metric_type              = var.predefined_metric_type
  backtrack_window                    = var.backtrack_window
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  security_group_description          = var.security_group_description
  ca_cert_identifier                  = var.ca_cert_identifier
  tags = {
    Application = "RDS"
    CreatedBy   = "terraform"
    Environment = "staging"
    Name        = "babelfish"
  }
}

# resource "aws_db_parameter_group" "aurora_db_parameter_group" {
#   name        = "${var.aurora_name}-aurora-db-psql10-parameter-group"
#   family      = "aurora-postgresql10"
#   description = "${var.env}-${var.aurora_name}-aurora-db-psql10-parameter-group"
#   lifecycle {
#     create_before_destroy = true
#   }

# }

# resource "aws_rds_cluster_parameter_group" "aurora_cluster_parameter_group" {
#   name        = "${var.aurora_name}-aurora-cluster-psql10-parameter-group"
#   family      = "aurora-postgresql10"
#   description = "${var.env}-${var.aurora_name}-aurora-cluster-psql10-parameter-group"

#   lifecycle {
#     create_before_destroy = true
#   }
# }

# resource "aws_security_group" "app_servers" {
#   name_prefix = "app-servers"
#   description = "For application servers"
#   vpc_id      = var.vpc_id
# }
# resource "aws_security_group_rule" "allow_access" {
#   type                     = "ingress"
#   from_port                = module.aurora.cluster_port
#   to_port                  = module.aurora.cluster_port
#   protocol                 = "tcp"
#   source_security_group_id = aws_security_group.app_servers.id
#   security_group_id        = "sg-091b6f59d06f27c40"
# }