# Terraform Associate Prep

This repository is my studying and notes for HashiCorp Terraform Associate exam. There are not all topics that this exam required because a lot of them simply need to be learned (e.g., state or commands theory).

Terraform docs I used : https://developer.hashicorp.com/terraform

> [!IMPORTANT]
> All sensitive cloud credentials and local state files are excluded via `.gitignore`. Never leave real secrets in an open repository.

## Exam Topic Progress

- [x] **1. Infrastructure as Code (IaC) with Terraform**
- [x] **2. Terraform fundamentals**
- [x] **3. Core Terraform workflow**
- [x] **4. Terraform configuration**
- [x] **5. Terraform modules**
- [x] **6. Terraform state management**
- [x] **7. Maintain infrastructure with Terraform**
- [x] **8. HCP Terraform**

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

### 3. Execute the Infrastructure Lifecycle
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
