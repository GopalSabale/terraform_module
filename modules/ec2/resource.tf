resource "aws_instance" "aws_t3_micro" {
  ami = var.ami_ids
  instance_type = var.instance_types
  tags = {
    env ="prod" 
  }
}