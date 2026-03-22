module "vpc" {
  source = "git::https://github.com/hyma999/roboshop-infra-dev.git//00-vpc"

  project              = var.project
  environment          = var.environment
  is_peering_required  = true
}