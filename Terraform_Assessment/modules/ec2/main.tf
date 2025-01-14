resource "aws_instance" "windows_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]
  user_data              = file("${path.module}/user_data.psl")

  tags = {
    Name = var.instance_name
  }
}