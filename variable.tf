
// default instance type is not specfied at commans line
variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = ""
}

// default name_tag prefix
variable "name_tag" {
  default = "EC2"
}

variable "availability_zones" {
  default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "subnet_name" {
  default = ["subnet-az-2a", "subnet-az-2b", "subnet-az-2c"]
}

variable "key_name" {
  default = "my-terraform-keypair"
}

variable "instance_count" {
  default = 3
}
