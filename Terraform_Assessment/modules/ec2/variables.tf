variable "ami_id" {
  description = "AMI ID for the Windows EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
  type        = string
}

variable "key_name" {
  description = "Name of the existing key pair to use for the EC2 instance"
  type        = string
}

variable "sg_id" {
  description = "ID of the security group to attach to the EC2 instance"
  type        = string
}

variable "user_data_script" {
  description = "User data script to configure the EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}
