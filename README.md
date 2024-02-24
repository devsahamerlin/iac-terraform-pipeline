```shell

Video Terraform et Google Cloud Platform: https://www.youtube.com/watch?v=JRdJJsiD0QU 
video Multi-Cloud IaC - Terraform Cloud, AWS, Google Cloud Platform: https://www.youtube.com/watch?v=dv_DuJU8R-I

# Activate SA
gcloud auth activate-service-account <service-account> --key-file="/key-path"

# Commandes Terraform
terraform init
terraform fmt
terraform validate
terraform plan -out=tfplan.out -var-file="terraform.tfvars"
terraform apply tfplan.out

AWS_ACCESS_KEY
AWS_SECRET_ACCESS_KEY
```