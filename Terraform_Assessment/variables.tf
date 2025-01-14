variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the resources"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for the Windows EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "service_name" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "CIDR blocks for ingress rules"
  type        = list(string)
}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

variable "db_username" {
  description = "RDS username"
  type        = string
}

variable "db_password" {
  description = "RDS password"
  type        = string
}
