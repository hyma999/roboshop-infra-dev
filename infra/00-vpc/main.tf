module "vpc" {
    source = "https://github.com/hyma999/roboshop-infra-dev.git//terraform-aws-vpc/infra/vpc?ref=main"

project= var.project
environment= var.environment
is_peering_required=true
}
