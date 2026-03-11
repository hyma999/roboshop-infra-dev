terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.1"
    }
  }
}

# create s3 bucket
 backend "s3" {
    bucket = "terraform-state-file-hymas3" #your s3 vault name
    key    = "roboshop-infra-dev/infra/00-vpc/terraform.tfstate" #path to the state file in the vault
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }


provider "aws" {
  region = "us-east-1"
}