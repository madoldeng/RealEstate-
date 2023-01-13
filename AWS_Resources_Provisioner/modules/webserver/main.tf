terraform {
 required_version = ">= 0.15"
}

resource "aws_subnet" "public_a" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_public_a
 availability_zone = var.az_1
 map_public_ip_on_launch = true
}

resource "aws_subnet" "public_b" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_public_b
 availability_zone = var.az_2
 map_public_ip_on_launch = true
}

resource "aws_subnet" "priavte_1a" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_private_1a
 availability_zone = var.az_1
 map_public_ip_on_launch = true
}

resource "aws_subnet" "priavte_2a" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_private_2a
 availability_zone = var.az_1
 map_public_ip_on_launch = true
}

resource "aws_subnet" "priavte_1b" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_private_1b
 availability_zone = var.az_2
 map_public_ip_on_launch = true
}

resource "aws_subnet" "priavte_2b" {
 vpc_id = var.vpc_id
 cidr_block = var.cidr_block_private_2b
 availability_zone = var.az_2
 map_public_ip_on_launch = true
}
