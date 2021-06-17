variable "aws_region" {
  type    = string
  default = "us-west-2" # London
}

variable "subnet_cidrs_public" {
  type    = list(string)
  default = ["172.30.1.0/24", "172.30.10.0/24"]
}

variable "subnet_cidrs_private" {
  type    = list(string)
  default = ["172.30.2.0/24", "172.30.20.0/24"]
}

variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b"]
  type    = list(string)
}

#Tags

variable "vpc_tags" {
  default = {
    Name    = "The VPC"
    Project = "Assessment"
  }
}

variable "igw_tags" {
  default = {
    Name    = "The VPC"
    Project = "Assessment"
  }
}

variable "priv_sub_tags" {
  default = [
    {
      Name = "Private 1"
    },
    {
      Name = "Private 2"
    }
  ]
}

variable "pub_sub_tags" {
  default = [
    {
      Name = "Public 1"
    },
    {
      Name = "Public 2"
    }
  ]
}