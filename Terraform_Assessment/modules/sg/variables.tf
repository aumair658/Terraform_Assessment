variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

variable "cidr_blocks" {
  description = "Allowed CIDR blocks for ingress traffic"
  type        = list(string)
}

variable "instance_name" {
  description = "Name tag for the EC2 instance's security group"
  type        = string
}
