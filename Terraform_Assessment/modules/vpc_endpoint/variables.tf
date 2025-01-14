variable "lb_arn" {
  description = "The ARN of the load balancer to expose via the VPC endpoint service"
  type        = string
}


variable "service_name" {
  description = "The service of the load balancer"
  type        = string
}
