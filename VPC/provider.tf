terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~>3.27"
        }
    }
    required_version = "~>0.14.9"
}

# provider "aws" {
# region      = var.aws_region
# access_key  = var.access_key
# secret_key  = var.secret_key
# }

# - use environment vars
# export AWS_ACCESS_KEY_ID="anaccesskey"
# export AWS_SECRET_ACCESS_KEY="asecretaccesskey"
# export AWS_DEFAULT_REGION="us-west-2"

# provider "aws" {}