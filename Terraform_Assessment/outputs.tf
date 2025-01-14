output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "alb_dns" {
  value = module.alb.lb_dns
}

output "vpc_endpoint_service_name" {
  value = module.vpc_endpoint.endpoint_service_name
}
