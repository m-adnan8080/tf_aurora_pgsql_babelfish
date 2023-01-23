# Setup Aurora PostgreSQL Serverless with Babelfish support
This terraform code is used to setup AWS Aurora PostgreSQL Serverless with Babelfish support inn default VPC using default subnets in Region `us-east-1`

## Pre-Requisites
1. AWS account
   - Login to AWS account and select the region where you want to setup
   - Goto VPC dashboard and select the desired VPC and note down the `vpc_id`
   - Goto subnets and filter subnets for the `vpc_id` and note down the subnet_ids
2. Terraform v1+


## Usage:
Update below variables the `terraform.tfvars` file
