# 🚀 Terraform EC2 CI/CD Deployment

This project demonstrates how to provision an AWS EC2 instance using **Terraform** with a fully automated **CI/CD pipeline powered by GitHub Actions**. Every push to the `main` branch triggers a workflow that runs Terraform commands to manage your AWS infrastructure.

---

## 📦 Project Overview

**Tech Stack:**

- 🛠️ Terraform (Infrastructure as Code)
- 🐙 GitHub Actions (CI/CD pipeline)
- ☁️ AWS (EC2 instance provisioning)

---

## 📁 Directory Structure

terraform-ec2-cicd/ ├── .github/ │ └── workflows/ │ └── deploy.yml # GitHub Actions workflow ├── terraform/ # Terraform configuration files │ ├── main.tf │ ├── variables.tf │ ├── outputs.tf │ └── provider.tf └── README.md

yaml
Copy
Edit

---

## ⚙️ Setup Instructions

### 1. 🔑 Add AWS Credentials

In your **GitHub repo**, go to:

Settings > Secrets and variables > Actions > New repository secret

yaml
Copy
Edit

Add the following secrets:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

These will authenticate GitHub Actions with your AWS account.

---

### 2. 🧪 Trigger the Pipeline

The CI/CD pipeline runs automatically when:

- A commit is pushed to the `main` branch

You can also enable manual triggers by adding `workflow_dispatch` in `deploy.yml`.

---

## 🛠️ How It Works

The GitHub Actions workflow performs the following steps:

1. **Checkout the code**
2. **Set up Terraform**
3. **Configure AWS credentials**
4. **Initialize Terraform**
5. **Run `terraform plan`** to preview infrastructure changes
6. *(Optional)* Run `terraform apply` to apply those changes

---

## 🖥️ Terraform Commands (Optional for Local Dev)

You can also run Terraform manually:

```bash
cd terraform
terraform init
terraform plan
terraform apply
