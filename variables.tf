//ec2

variable "ec2_ssh_key_name" {
  default     = "free-tier-ec2-key"
}

variable "ec2_ssh_public_key_path" {
  default     = "./ssh_keys/id_rsa.pub"
}

variable "ec2_security_group_name" {
  default     = "SSH and HTTP security group"
}

variable "ec2_security_group_description" {
  default     = "SSH and HTTP security group"
}

//vpc

variable "vpc_name" {
  default     = "Free Tier VPC"
}

variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
}

//public subnet

variable "subnet_name" {
  default     = "Free Tier Public Subnet"
}

variable "subnet_cidr_block" {
  default     = "10.0.1.0/24"
}

variable "subnet_availability_zone" {
  default     = "us-east-1a"
}

//igw

variable "internet_gateway_name" {
  default     = "Free Tier Internet Gateway"
}

//route

variable "route_table_name" {
  default     = "Free Tier Route Table"
}
