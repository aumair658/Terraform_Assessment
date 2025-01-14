output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}

output "rds_sg_id" {
  value       = aws_security_group.rds_sg.id
  description = "The security group ID for the RDS instance"
}

output "alb_sg_id" {
  value       = aws_security_group.alb_sg.id
  description = "The security group ID for the ALB"
}
