resource "aws_elb" "lb" {
  name            = var.lb_name
  security_groups = [aws_security_group.elb_sg.id]                     
  subnets         = [aws_subnet.public[0].id, aws_subnet.public[1].id] 

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  depends_on = [aws_security_group.elb_sg]
}