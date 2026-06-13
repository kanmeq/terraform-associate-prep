# Terraform Associate Prep

This repository is my studying and notes for HashiCorp Terraform Associate exam.

> [!IMPORTANT]
> All sensitive cloud credentials and local state files are strictly excluded via `.gitignore`. Never leave real secrets in an open repository.

## Exam Topic Progress

- [x] **01. IaC Concepts & Basics** — Core IaC benefits; init, plan, apply, and destroy lifecycles.
- [ ] **02. Provisioners** — Implementing local-exec and remote-exec; operational risks.
- [ ] **03. Providers** — Configuring cloud providers, aliases, and version locks.
- [ ] **04. Terraform Language Syntax** — Resource loops using count and for_each.
- [ ] **05. Variables and Data Sources** — Architecting inputs, outputs, and external data.
- [ ] **06. Manage State** — State storage internals, remote backends (S3), and locking.
- [ ] **07. Modules** — Developing reusable infrastructure patterns.

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
