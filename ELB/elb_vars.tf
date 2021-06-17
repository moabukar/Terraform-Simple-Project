variable "lb_name" {
  type    = string
  default = "test-elb"
}

# variable "ec2_sg" {
#   type    = string
#   default = "sg-0afa3b00acbedd381" #LA
# }

# variable "elb_subnets" {
#   type    = list(any)
#   default = ["subnet-041d3f9adbff3277e", "subnet-0628448f5cf8c2806"]
# }

#EC2 security group variables--

variable "elb_sg" {
  default = "elb-sg"
}

variable "elb_sg_tags" {
  default = {
    Name    = "The ELB SG"
    Project = "Assessment"
  }
}