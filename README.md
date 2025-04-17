# 🚀 Terraform EC2 CI/CD Deployment

This project demonstrates how to provision an **AWS EC2 instance** using **Terraform**, and automate the deployment using **GitHub Actions** in a CI/CD pipeline.

---

## 🧰 Tools & Technologies

- **Terraform** – Infrastructure as Code (IaC)
- **AWS EC2** – Virtual Server Provisioning
- **GitHub Actions** – CI/CD Automation
- **Ubuntu** – EC2 Instance OS

---

## 📊 Architecture Overview

This diagram illustrates the CI/CD pipeline used in this project:

![CI/CD Architecture](./assets/architecture.png)

---

## 📂 Project Structure

```bash
terraform-ec2-cicd/
├── .github/workflows/
│   └── deploy.yml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── assets/
│   └── architecture.png
└── README.md
⚙️ GitHub Actions Workflow
The GitHub Actions workflow (deploy.yml) is triggered on pushes to the main branch. It runs Terraform commands to provision and deploy infrastructure to AWS:

terraform init

terraform plan

terraform apply

Secrets are securely managed via GitHub Repository Settings:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

✅ Terraform Output Example
hcl
Copy
Edit
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

instance_public_ip = "3.85.XXX.XXX"
🧪 How to Use
Clone this repo
git clone https://github.com/LMorrison-cyber/TerraformEC2.git

Navigate into the project folder
cd TerraformEC2/terraform

Initialize Terraform
terraform init

Apply changes (manually or wait for CI/CD)
terraform apply

🛡 Security
✅ No sensitive information is hardcoded
✅ AWS credentials are stored as GitHub Secrets

🏁 Future Improvements
Add remote state backend with S3 and DynamoDB

Implement rolling deployment with EC2 Autoscaling

Add monitoring & alerting

💡 License
MIT © 2025 LMorrison-cyber
