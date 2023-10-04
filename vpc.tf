# VPC
resource "aws_vpc" "wordpress_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "wordpress_vpc"
  }
}

# Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.wordpress_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet"
  }
}

# Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.wordpress_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "private_subnet"
  }
}


#resource "aws_subnet" "eu-central-1a" {
#    vpc_id = aws_vpc.myvpc.id
#    cidr_block =  "10.0.0.0/24"
#    availability_zone = "eu-central-1a"
#
#    tags = {
#        name = "eu-central-1a"
#    }
#}
#
#resource "aws_subnet" "eu-central-1b" {
#    vpc_id = aws_vpc.myvpc.id
#    cidr_block =  "10.0.0.0/24"
#    availability_zone = "eu-central-1b"
#
#    tags = {
#        name = "eu-central-1b"
#    }
#}
#
#resource "aws_internet_gateway" "mygw" {
#    vpc_id = aws_vpc.myvpc.id
#
#    tags = {
#        name = "myIg"
#    }
#}