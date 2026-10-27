
##====s3 bucket=======
variable "s3_bucket" {
  type = string
}

variable "iam_user" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_pair" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "instance_for_each" {
  type = map(string)
  default = {
    qa   = "t2.nano"
    prod = "t3a.small"
  }

}