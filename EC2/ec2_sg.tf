resource "aws_security_group" "ec2_sg" {
  name   = var.ec2_sg
  vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.30.0.0/16"]
  }
  tags = var.ec2_sg_tags
}


# resource "aws_security_group" "ec2_sg" {
#   name   = var.ec2_sg
#   vpc_id = var.vpc_id

#   ingress {
#     description = "HTTPS"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   tags = var.ec2_sg_tags
# }

