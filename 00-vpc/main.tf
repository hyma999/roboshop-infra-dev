module "vpc" {
  source = "https://github.com/hyma999/roboshop-infra-dev.git"

  project              = var.project
  environment          = var.environment
  is_peering_required  = true
}