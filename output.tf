output "ec2_id" {
  description = "The ID of the EC2"
  value       = concat(aws_instance.free_instance.*.id, [""])[0]
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = concat(aws_vpc.new_vpc.*.id, [""])[0]
}

output "public_subnet_id" {
  description = "The ID of the Public Subnet"
  value       = concat(aws_subnet.new_public_subnet.*.id, [""])[0]
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = concat(aws_internet_gateway.internet_gateway.*.id, [""])[0]
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = concat(aws_route_table.new_route_table.*.id, [""])[0]
}
