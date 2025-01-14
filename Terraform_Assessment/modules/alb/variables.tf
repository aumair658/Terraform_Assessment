variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}
