# ProjectTYI:(Trust Your Instinct)
Terraform Bootstrap account, Pipeline, Environment, Webhook, 
1. Creating S3 bucket & DDB Table.
2. Run "terraform init" into terraform-bootstrap folder.
3. This TF template going to create 2 global resources. ( terraform workspace select global || terraform workspace new global)
	3A. S3 bucket for terraform backend.
	3B. Dynamodb Table for terraform state lock.
4. Run TF Plan "terraform plan -var-file=../common.tfvars"
5. Run TF Apply "terraform apply -var-file=../common.tfvars -auto-approve"
6. Add the Backend into provider.tf
7. Update the account.tfvars
8. Run "terraform init" into terraform-bootstrap folder again to use s3 backend.
	 terraform init --backend-config=../vars/account.tfvars
## May Lord Buddha Bless, No Bug Forever##	 