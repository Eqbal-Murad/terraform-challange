
### Define the outputs ###
output "ec2_instance_id" {
  value = [module.my_application_ec2.*.ec2-instance-id]
}

output "key_pair" {
  value = map(
    "public_key", module.my_key_pair.public_key,
    "private_key", module.my_key_pair.private_key
  )
}
