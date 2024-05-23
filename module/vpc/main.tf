resource "aws_vpc" "vpc79" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="terra-vpc"
  }
}

resource "aws_subnet""vpc79"{
  vpc_id = aws_vpc.vpc79.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name ="tf-pub-SN"
  }
}

resource "aws_internet_gateway" "vpc79-IGW" {
  vpc_id = aws_vpc.vpc79.id
}

resource "aws_route_table" "pub-aws_route_table" {
  vpc_id = aws_vpc.vpc79.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc79-IGW.id
  }
}


resource "aws_route_table_association" "vpc79" {
  route_table_id = aws_route_table.pub-aws_route_table.id
  subnet_id = aws_subnet.vpc79.id
}