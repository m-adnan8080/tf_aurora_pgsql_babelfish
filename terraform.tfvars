env                        = "staging"
aurora_name                = "aurora-babelfish"
babelfish                  = true
allowed_cidr_blocks        = ["172.31.0.0/16"]
database_name              = ""
publicly_accessible        = false
aurora_port                = "5432"
apply_immediately          = true
monitoring_interval        = 60
scaling_configuration      = {
  auto_pause               = true
  max_capacity             = 2
  min_capacity             = 2
  seconds_until_auto_pause = 300
  timeout_action           = "RollbackCapacityChange"
}
storage_encrypted          = true
engine                     = "aurora-postgresql"
engine_version             = "11.13"
engine_mode                = "serverless"
security_group_description = "Managed by Terraform"

vpc_id                     = "vpc-32bf1255"
database_subnets           = ["subnet-15fb7e19", "subnet-906057ad", "subnet-b65206ee"]
