resource "aws_route_table" "new_route_table" {
  vpc_id = aws_vpc.new_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" route_table_association {
  subnet_id      = aws_subnet.new_public_subnet.id
  route_table_id = aws_route_table.new_route_table.id
}
