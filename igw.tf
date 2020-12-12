resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.new_vpc.id
  tags = {
    Name = var.internet_gateway_name
  }
}
