output "lb_dns" {
  value       = aws_lb.app_lb.dns_name
  description = "The DNS name of the Application Load Balancer"
}

output "lb_arn" {
  value       = aws_lb.app_lb.arn
  description = "The ARN of the Application Load Balancer"
}
