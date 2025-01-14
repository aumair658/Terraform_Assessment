provider "aws" {
  region = var.region
}

module "sg" {
  source       = "./modules/sg"
  vpc_id       = var.vpc_id
  cidr_blocks  = var.allowed_cidr_blocks
  instance_name = var.instance_name
}

# EC2 Instance
module "ec2" {
  source           = "./modules/ec2"
  instance_name = var.instance_name
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  subnet_id        = var.subnet_ids[0]
  sg_id            = module.sg.ec2_sg_id
  user_data_script = file("user_data.psl")
}

# RDS Instance
module "rds" {
  source          = "./modules/rds"
  db_name         = var.db_name
  username        = var.db_username
  password        = var.db_password
  subnet_ids      = var.subnet_ids
  sg_id           = module.sg.rds_sg_id
}

# Application Load Balancer
module "alb" {
  source     = "./modules/alb"
  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids
  sg_id      = module.sg.alb_sg_id
}


# VPC Endpoint Service
module "vpc_endpoint" {
  source     = "./modules/vpc_endpoint"
  lb_arn     = module.alb.lb_arn
  service_name = var.service_name
}