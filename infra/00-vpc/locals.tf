locals {
    ssm_parameters= {

    }
    
    vpc_id = {
        name= "/${var.project}/${var.environment}/vpc_id"
        type = string

    public_subnet_ids = {
        name = "/${var.project}/${var.environment}/public_id"
        type = string[list]
        value = joins(",",modules.vpc.public_subnet_ids)
    }

    private_subnet_ids = {
      name = "/${var.project}/${var.environment}/private_id"
        type = string[list]
        value = joins(",",modules.vpc.private_subnet_ids)   
    }
    database_subnet_ids = {
        name = "/${var.project}/${var.environment}/database_id"
        type = string[list]
        value = joins(",",modules.vpc.database_subnet_ids)
    }
}
}
