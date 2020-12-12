resource "aws_subnet" "new_public_subnet" {
  vpc_id                  = aws_vpc.new_vpc.id
  cidr_block              = var.subnet_cidr_block
  availability_zone       = var.subnet_availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_name
  }
}
