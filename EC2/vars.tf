
# EC2 Instance Variables

variable "ec2_image" {
  type    = string
  default = "ami-0ad8ecac8af5fc52b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "vpc_id" {
  default = "vpc-0872e0caec5aae1a2"
}


variable "ec2_sg" {
  default = "ec2_sg"
}

variable "ec2_sg_tags" {
  default = {
    Name = "AndDigitalSG"
  }
}

variable "subnet_id" {
  default = "subnet-0d9a6e557d5ce75df"
}

