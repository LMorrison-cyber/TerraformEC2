# 🚀 Terraform EC2 CI/CD Project

This project demonstrates a complete **CI/CD pipeline** for provisioning an **EC2 instance** on AWS using **Terraform**, automated through **GitHub Actions**.

![Build Status](https://github.com/LMorrison-cyber/TerraformEC2/actions/workflows/deploy.yml/badge.svg)

---

## 📸 Architecture Diagram

![Architecture](architecture.png)

---

## 🛠️ Tech Stack

- **Terraform** — Infrastructure as Code
- **AWS EC2** — Compute resource
- **GitHub Actions** — CI/CD pipeline
- **Ubuntu** — Operating System

---

## ⚙️ Workflow Overview

1. Push code to `main` branch
2. GitHub Actions triggers the workflow
3. Terraform initializes and runs `plan` & `apply`
4. EC2 instance is created in the configured region

---

## 🧪 CI/CD Pipeline

```yaml
# .github/workflows/deploy.yml
on:
  push:
    branches: [main]
Environment Secrets Required
Set the following in your repo’s Settings > Secrets and Variables > Actions:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

📂 Project Structure
bash
Copy
Edit
terraform-ec2-cicd/
│
├── .github/workflows/deploy.yml     # GitHub Actions workflow
├── terraform/                       # Terraform config files
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── README.md
└── architecture.png                 # Diagram of the setup
🧾 Example Terraform Output
makefile
Copy
Edit
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

instance_public_ip = "3.238.xxx.xxx"
✅ To-Do / Improvements
 Add automated instance cleanup

 Integrate with Ansible or Docker

 Add monitoring/alerting via CloudWatch

📬 Contact
Feel free to reach out via GitHub for collaboration or feedback!


