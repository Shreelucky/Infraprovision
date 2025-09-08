# Terraform Azure Multi-Environment Setup

## Prerequisites
1. Azure CLI installed (`az login`)
2. Terraform installed (>= 1.3)
3. Storage account + container created for remote state:
   ```bash
   az group create -n tfstate-rg -l eastus
   az storage account create -n tfstateaccount123 -g tfstate-rg -l eastus --sku Standard_LRS
   az storage container create -n tfstate --account-name tfstateaccount123
   ```

## Usage
Initialize and apply for Dev:
```bash
cd envs/dev
terraform init
terraform apply -auto-approve
```

For UAT:
```bash
cd envs/uat
terraform init
terraform apply -auto-approve
```

For Prod:
```bash
cd envs/prod
terraform init
terraform apply -auto-approve
```
