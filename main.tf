
### Data blocks ###
data "aws_ami" "ami_id" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

## Provision a Private Key ###
module "my_key_pair" {
  source   = "./modules/key-pair"
  key_name = var.key_name

}

## Provision EC2 instances ###
module "my_application_ec2" {

  source            = "./modules/ec2"
  ami               = data.aws_ami.ami_id.id
  instance_type     = var.instance_type
  count             = var.instance_count
  name_tag          = "${var.name_tag}-${count.index}"
  availability_zone = var.availability_zones[count.index]
  subnet_name       = var.subnet_name[count.index]
  key_name          = module.my_key_pair.key-name

}
