resource "aws_security_group" "elb_sg" {
  name   = var.elb_sg
  vpc_id = aws_vpc.main.id
  //vpc_id = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.30.0.0/16"]
  }
  tags = var.elb_sg_tags
}