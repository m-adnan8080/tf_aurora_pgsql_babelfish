# Setup Aurora PostgreSQL Serverless with Babelfish support
This terraform code is used to setup AWS Aurora PostgreSQL Serverless with Babelfish support inn default VPC using default subnets in Region `us-east-1`

## Pre-Requisites
1. AWS account
   - Login to AWS account and select the region where you want to setup
   - Goto VPC dashboard and select the desired VPC and note down the `vpc_id`
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
publicly_accessible = true/false
max_capacity        = 16
min_capacity        = 2
storage_encrypted   = true/false
engine              = "aurora-postgresql"
engine_version      = "11.13"
engine_mode         = "serverless"
vpc_id              = "vpc-xxxxxxxx"
database_subnets    = ["subnet-xxxxxxa", "subnet-xxxxxxb", "subnet-xxxxxxc"]
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