# Terraform Associate Prep

This repository is my studying and notes for HashiCorp Terraform Associate exam.

> [!IMPORTANT]
> All sensitive cloud credentials and local state files are strictly excluded via `.gitignore`. Never leave real secrets in an open repository.

## Exam Topic Progress

- [] **1. Infrastructure as Code (IaC) with Terraform**
- [ ] **2. Terraform fundamentals**

  * `01-terraform-basics/`
- [ ] **3. Core Terraform workflow**
- [ ] **4. Terraform configuration**
- [ ] **5. Terraform modules**
- [ ] **6. Terraform state management**
- [ ] **7. Maintain infrastructure with Terraform**
- [ ] **8. HCP Terraform**

## Local Deployment Guide

This project is structured as a collection of independent Terraform root modules. To clone the repository and execute any of the laboratory works locally, follow the steps below.

### 1. Clone the Repository
Clone the project to your local machine:
```bash
git clone git@github.com/kanmeq/terraform-associate-prep.git
```

### 2. Navigate to the Target Lab
Change your current working directory to the specific topic you want to test (for example, the basics section):
```bash
cd 01-terraform-basics
```

### 3. Setup Your Cloud Passwords
Terraform needs your AWS keys to work, but we never save real passwords on GitHub. Follow these steps to add your keys locally:

1. Look in the folder and find the template file named `terraform.tfvars.example`.
2. Copy that file and rename it to `terraform.tfvars`.
3. Open `terraform.tfvars` in your text editor and type your real AWS keys inside the quotation marks.

> [!IMPORTANT]
> The new `terraform.tfvars` file holds your private passwords. `.gitignore` file will automatically hide it and keep it safe on your computer.


### 4. Execute the Infrastructure Lifecycle
Run the standard sequence of Terraform commands to initialize and deploy the resources:

* **Initialize the working directory:** Downloads the required cloud provider plugins and sets up the backend.
  ```bash
  terraform init
  ```

* **Generate an execution plan:** Previews the exact infrastructure changes that Terraform will perform in your cloud account.
  ```bash
  terraform plan
  ```

* **Apply the changes:** Deploys the infrastructure. Type `yes` when prompted to confirm the action.
  ```bash
  terraform apply
  ```

### 5. Clean Up Resources
When you are done testing, always delete the cloud resources to avoid unexpected charges:
```bash
terraform destroy
```
