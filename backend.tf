terraform {
  backend "s3" {
    bucket = "demo--00--003"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}