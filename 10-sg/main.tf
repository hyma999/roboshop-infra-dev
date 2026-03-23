module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/hyma999/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    sg_names = replace(var.sg_names[count.index],"-","-")
    vpc_id = local.vpc_id
  
}