resource "aws_vpc" "main" {
  cidr_block           = "172.30.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = var.vpc_tags
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = var.igw_tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
}

resource "aws_subnet" "public" {
  count = length(var.subnet_cidrs_public)

  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidrs_public[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  tags                    = var.pub_sub_tags[count.index]
}

resource "aws_route_table_association" "pub" {
  count = length(var.subnet_cidrs_public)

  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
}

resource "aws_subnet" "private" {
  count = length(var.subnet_cidrs_private)

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrs_private[count.index]
  availability_zone = var.availability_zones[count.index]
  tags              = var.priv_sub_tags[count.index]
}

resource "aws_route_table_association" "private" {
  count = length(var.subnet_cidrs_private)

  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = aws_route_table.private.id
}
