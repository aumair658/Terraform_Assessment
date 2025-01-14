resource "aws_vpc_endpoint_service" "endpoint" {
  acceptance_required       = false
  network_load_balancer_arns = [var.lb_arn]

  tags = {
    Name = "${var.service_name}-vpc-endpoint-service"
  }
}
