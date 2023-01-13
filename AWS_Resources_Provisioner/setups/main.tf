provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

module "webserver" {
  source                = "../modules/webserver"
  vpc_id                = aws_vpc.main.id
  az_1                  = "us-east-1a"
  az_2                  = "us-east-1b"
  cidr_block_public_a   = "10.0.1.0/24"
  cidr_block_public_b   = "10.0.2.0/24"
  cidr_block_private_1a = "10.0.3.0/24"
  cidr_block_private_2a = "10.0.4.0/24"
  cidr_block_private_1b = "10.0.5.0/24"
  cidr_block_private_2b = "10.0.6.0/24"
  webserver_name        = "frontend"
  ami                   = "ami-0b93ce03dcbcb10f6"
  instance_type         = "t2.medium"
}
