module "vpc" {
  source = "https://github.com/daws-88s/roboshop-infra-dev.git"

  project              = var.project
  environment          = var.environment
  is_peering_required  = true
}