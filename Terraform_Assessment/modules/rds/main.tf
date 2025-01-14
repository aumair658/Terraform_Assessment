# resource "aws_db_instance" "mssql" {
#   allocated_storage       = 20
#   engine                  = "sqlserver-se"
#   engine_version          = "15.00.4198.2.v1"
#   instance_class          = "db.t3.medium"
#   db_name                 = var.db_name
#   username                = var.username
#   password                = var.password
#   db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
#   vpc_security_group_ids  = [var.sg_id]

#   tags = {
#     Name = "${var.db_name}-rds"
#   }
# }

# resource "aws_db_subnet_group" "rds_subnet_group" {
#   name       = "${var.db_name}-subnet-group"
#   subnet_ids = var.subnet_ids

#   tags = {
#     Name = "${var.db_name}-subnet-group"
#   }
# }


resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "${var.db_name}-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "${var.db_name}-subnet-group"
  }
}

# RDS Instance
resource "aws_db_instance" "mssql" {
  allocated_storage       = 20
  engine                  = "sqlserver-se"
  engine_version          = "15.00.4198.2.v1"
  instance_class          = "db.t3.medium"
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [var.sg_id] # Attach the RDS security group
  skip_final_snapshot     = true

  tags = {
    Name = "${var.db_name}-rds"
  }
}
