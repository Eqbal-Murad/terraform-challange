help:
	cat README.md

init:
	terraform init

plan:
	terraform plan -var="instance_type=t3.micro" -var="name_tag=EC2Instance"

apply:
	terraform apply -var="instance_type=t3.micro" -var="name_tag=EC2Instance"
	
destroy:
	terraform destroy
