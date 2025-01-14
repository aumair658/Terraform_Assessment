output "endpoint_service_name" {
  value       = aws_vpc_endpoint_service.endpoint.service_name
  description = "The name of the VPC endpoint service"
}