variable "vpc_id" {
 type = string 
 description = "VPC Id"
}

variable "cidr_block_public_a" {
 type = string
 description = "Public subnet 1a cidr block"
}

variable "cidr_block_public_b" {
 type = string
 description = "Public subnet 1b cidr block"
}

variable "cidr_block_private_1a" {
 type = string
 description = "Private subnet 1a cidr block"
}

variable "cidr_block_private_2a" {
 type = string
 description = "Private subnet 1a cidr block"
}

variable "cidr_block_private_1b" {
 type = string
 description = "Private subnet 1a cidr block"
}

variable "cidr_block_private_2b" {
 type = string
 description = "Private subnet 1a cidr block"
}

variable "az_1" {
 type = string
 description = "Availiability zone 1"
}

variable "az_2" {
 type = string
 description = "Availiability zone 2"
}

variable "webserver_name" {
 type = string
 description = "Name of the webserver"
}

variable "ami" {
 type = string
 description = "AMI to use on the webserver instance"
}

variable "instance_type" {
 type = string
 description = "Instance type"
 default = "t2.micro"
}