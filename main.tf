provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAxxxx"
  secret_key = "xxxx"
}

terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket  = "terraform-state-home"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    access_key = "AKIAxxxx"
    secret_key = "xxxx"
  }
}
