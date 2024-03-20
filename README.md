- Multi-Cloud IaC - Terraform Cloud, Azure AWS, Google Cloud Platform: https://www.youtube.com/watch?v=p6hGNs6_Gfo&list=PLB1JwWIio9JO2ZXpufbRmUaMThSIU1zxc&index=2

![Terraform-multi-cloud.svg](images%2FTerraform-multi-cloud.svg)

```shell
# Activate SA
gcloud auth activate-service-account <service-account> --key-file="/key-path"

# Commandes Terraform
terraform init
terraform fmt -recursive
terraform validate
terraform plan -out=tfplan.out -var-file="terraform.tfvars"
terraform apply tfplan.out

AWS_ACCESS_KEY
AWS_SECRET_ACCESS_KEY

az ad sp create-for-rbac --name multicloud-iac-aks --role="Contributor" --scopes="/subscriptions/<SUBCRIPTION_ID>" > rbac.json

azure_subscription_id = ""
azure_client_id = ""
azure_client_secret = ""
azure_tenant_id = ""

```

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/arc_kubernetes_cluster