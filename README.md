## Terraform coding Challenge


### Prerequisite
- Install Terraform
```
brew install terraform
```
- Create an AWS Account
- Create  3 subnet with name tag "subnet-az-2a", "subnet-az-2b", "subnet-az-2c" in 3 separate AZ


### Usage
```
Input parameters for the terraform module:
1. AWS instance type :   t3.micro
2. Name tag       :   EC2Instance


Output parameters for the terraform module:
1. List of newly created instance IDs
2. A map containing public and private key pair
```


## Deployment Steps
- Initialize terraform modules and providers
- Terraform plan
- Terraform execute


### Commands

`make init` :
- terraform init

`make plan` :
- terraform plan -var="instance_type=t3.micro" -var="name_tag=EC2Instance"

`make apply` :
- terraform apply -var="instance_type=t3.micro" -var="name_tag=EC2Instance"

`make destroy` :
- terraform destroy"
