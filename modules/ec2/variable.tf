variable "ami_ids" {
  type = string
}

variable "instance_types" {
  type = string
}

variable "key_pair_new" {
  type = string
}

variable "intance_counts" {
  type = number
  default = 3
}