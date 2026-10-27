module "bucket_creation" {
  source    = "./modules/aws_s3"
  s3_bucket = var.s3_bucket
}

module "iam_user_createtion" {
  source   = "./modules/iam_user"
  iam_user = var.iam_user
}

module "ec2-instace-creation" {
  source         = "./modules/ec2"
  instance_types = var.instance_type
  intance_counts = var.instance_count
  ami_ids        = var.ami_id
  key_pair_new   = var.key_pair
}

module "ec2-instace_for_each" {
  source       = "./modules/ec2"
  for_eaches   = var.for_each
  ami_ids      = var.ami_id
  key_pair_new = var.key_pair
}