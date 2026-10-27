resource "aws_instance" "aws_t3_micro" {
  ami = var.ami_ids
  instance_type = var.instance_types
  count = var.intance_counts
  tags = {
   name="ec2-${count.index}"
  }
}

###=============for each key==============

resource "aws_instance" "aws_ec2_micro" {
  ami = var.ami_ids
  instance_type = var.instance_types
  for_each = var.for_eaches
  tags = {
   name="ec2-${each.key}"
  }
}