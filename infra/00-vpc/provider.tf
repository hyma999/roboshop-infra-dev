terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.35.1"
    }
  }
}

# create s3 bucket
terraform {
  backend "s3" {
    bucket = "terraform-hymaaws"
    key    = "roboshop/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
  


