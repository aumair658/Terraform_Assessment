resource "aws_lb" "app_lb" {
  name               = "app-lb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.subnet_ids

  tags = {
    Name = "AppLoadBalancer"
  }
}

resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = 443
  protocol          = "HTTPS"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ec2_tg.arn
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = 7000
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ec2_tg.arn
  }
}

resource "aws_lb_target_group" "ec2_tg" {
  name     = "ec2-tg"
  port     = 443
  protocol = "HTTPS"
  vpc_id   = var.vpc_id
  target_type = "instance"
}
