resource "aws_instance" "myec2" {
  ami           = var.ec2_image
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}
