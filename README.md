# 🚀 Production-Ready MLOps Platform on AWS (Terraform + EKS)

This repository contains Infrastructure as Code (IaC) for a production-style MLOps platform built on AWS using Terraform.

The goal of this project is to simulate a real-world, enterprise-grade MLOps infrastructure setup with modular Terraform design, remote state management, and CI/CD readiness.

---

## 🏗 Architecture Overview

The platform is designed with production best practices:

- VPC with public and private subnets (Multi-AZ)
- NAT Gateway for outbound internet access
- Amazon EKS cluster (Kubernetes)
- S3 for Terraform remote state
- DynamoDB for state locking
- Modular Terraform structure
- Environment isolation (dev/prod ready)

High-level components:

- Networking (VPC, Subnets, Route Tables)
- Kubernetes (EKS)
- Artifact Storage (S3)
- Container Registry (ECR)
- IAM Roles & Policies
- CI/CD Integration (GitHub Actions – planned)

---

## 📁 Project Structure

```

mlops-platform/
│
├── modules/
│   └── vpc/                # Reusable VPC module
│
├── environments/
│   └── prod/               # Production environment root module
│       ├── main.tf
│       ├── provider.tf
│       ├── versions.tf
│       ├── variables.tf
│       └── backend.tf
│
└── .gitignore

````

---

## 🔐 Remote State Management

Terraform state is stored remotely using:

- Amazon S3 (state storage)
- DynamoDB (state locking)

This prevents:
- State corruption
- Concurrent apply issues
- Local state dependency risks

State file is NOT stored in this repository.

---

## ⚙️ Prerequisites

- AWS Account
- IAM User with sufficient permissions
- AWS CLI configured
- Terraform >= 1.6
- Git

---

## 🔑 Authentication

Terraform uses AWS CLI credentials configured locally:

```bash
aws configure
````

No credentials are stored in this repository.

---

## 🚀 Deployment Steps

### 1️⃣ Navigate to Environment

```bash
cd environments/prod
```

### 2️⃣ Initialize Terraform

```bash
terraform init
```

### 3️⃣ Review Execution Plan

```bash
terraform plan
```

### 4️⃣ Apply Infrastructure

```bash
terraform apply
```

### 5️⃣ Destroy (When Not In Use)

```bash
terraform destroy
```

---

## 💰 Cost Considerations

This infrastructure provisions:

* NAT Gateway (billable resource)
* Elastic IP
* Future EKS cluster (billable)

⚠️ Always run `terraform destroy` when not actively using the environment.

---

## 🧠 Design Principles

* Modular Terraform architecture
* Environment isolation
* Provider version pinning
* Remote backend with locking
* Infrastructure reproducibility
* Production-style network segmentation

---

## 🔒 Security Practices

* No AWS credentials stored in repo
* `.terraform` directory ignored
* `terraform.tfstate` ignored
* Remote state encrypted in S3
* Public access blocked for state bucket

---

## 📈 Future Enhancements

* Amazon EKS cluster provisioning
* IAM Roles for Service Accounts (IRSA)
* S3 for ML artifacts
* ECR for container images
* GitHub Actions CI/CD pipeline
* Monitoring stack (Prometheus + Grafana)
* Multi-environment support (dev/staging/prod)
* Cost optimization improvements

---

## 🎯 Objective

This project is built to:

* Demonstrate production-ready Terraform practices
* Simulate real enterprise MLOps infrastructure
* Serve as a learning and portfolio project

---

## 📜 License

This project is for educational and demonstration purposes.

````
