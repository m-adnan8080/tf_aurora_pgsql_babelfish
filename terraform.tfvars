env                 = "staging"
aurora_name         = "babelfish"
babelfish           = true
allowed_cidr_blocks = ["0.0.0.0/0"]
database_name       = "babelfish"
publicly_accessible = true
aurora_port         = "5432"
apply_immediately   = true
monitoring_interval = 60
storage_encrypted   = true
engine              = "aurora-postgresql"
engine_version      = "13.7"
engine_mode         = "provisioned"
instance_class      = "db.serverless"
instances = {
  one = {}
}

# scaling_configuration = {
#   auto_pause               = true
#   min_capacity             = 2
#   max_capacity             = 4
#   seconds_until_auto_pause = 300
#   timeout_action           = "RollbackCapacityChange"
# }

serverlessv2_scaling_configuration = {
  min_capacity = 0.5
  max_capacity = 2
}

security_group_description = "Managed by Terraform"

vpc_id           = "vpc-32bf1255"
database_subnets = ["subnet-15fb7e19", "subnet-906057ad", "subnet-b65206ee"]

username            = "postgres"
password            = "admin123"
skip_final_snapshot = true