variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

variable "username" {
  description = "Master username for the RDS instance"
  type        = string
}

variable "password" {
  description = "Master password for the RDS instance"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS subnet group"
  type        = list(string)
}


variable "sg_id" {
  description = "Security group ID for the RDS instance"
  type        = string
}
