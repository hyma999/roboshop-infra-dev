module "vpc" {
  source = "git::https://github.com/hyma999/terraform-aws-vpc.git?ref=main"
}

# variable "project" {
#   type = string
# }

# variable "environment" {
#   type = string
# }

variable "is_peering_required" {
  type    = bool
  default = true
}