# Setup Aurora PostgreSQL Serverless with Babelfish support
This terraform code is used to setup AWS Aurora PostgreSQL Serverless with Babelfish support inn default VPC using default subnets in Region `us-east-1`

## Pre-Requisites
1. AWS account
   - Login to AWS account and select the region where you want to setup
   - Goto VPC dashboard and select the desired VPC and note down the `vpc_id`
   - Note down the VPC CIDR BLOCK
   - Goto subnets and filter subnets for the `vpc_id` and note down the subnet_ids
2. Terraform v1+


## Usage:
Clone the repo
```
git clone https://github.com/m-adnan8080/tf_aurora_pgsql_babelfish.git
```

Change directory
```
cd tf_aurora_pgsql_babelfish
```

Open `terraform.tfvars` file your editor and update below variables according to your envirnoment
```
env                 = "development"
aurora_name         = "aurora_name"
database_name       = "database_name"
babelfish           = true
allowed_cidr_blocks = ["0.0.0.0/0"]
publicly_accessible = true/false
max_capacity        = 16
min_capacity        = 2
storage_encrypted   = true/false
engine              = "aurora-postgresql"
engine_version      = "13.7"
engine_mode         = "provisioned"
instance_class      = "db.serverless"
instances = {
  one = {}
  # two = {}
}

serverlessv2_scaling_configuration = {
  min_capacity = 0.5
  max_capacity = 2
}

vpc_id           = "vpc-xxxxxxxx"
database_subnets = ["subnet-xxxxxxxa", "subnet-xxxxxxxb", "subnet-xxxxxxxc"]
skip_final_snapshot = true
```

Then run below commands to create the resources in AWS
```
terraform init
terraform plan
terraform apply
```

Cleanup: To remove run below commands
```
terraform destroy
```