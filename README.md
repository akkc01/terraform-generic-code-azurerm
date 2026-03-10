# Terraform Azure Infrastructure (Generic IaC)

This repository contains **Infrastructure as Code (IaC)** written in **Terraform** to provision and manage resources on **Microsoft Azure**.
The infrastructure deployment is automated using **GitHub Actions CI/CD pipelines**.

---

## Overview

This project demonstrates how to deploy Azure infrastructure using Terraform in a reusable and automated way.
It follows best practices such as modular code structure, remote state management, and automated deployment pipelines.

---

## Technologies Used

* Terraform
* Microsoft Azure
* GitHub Actions
* ADO
* Azure CLI

---

## Repository Structure

```
terraform-azure-iac
│
├── modules/                # Reusable Terraform modules
│
├── environments/           # Environment specific configurations
│   ├── dev
│   └── prod
│
├── .github/workflows/      # GitHub Actions CI/CD pipelines
│   └── azure-pipelines.yml
│
  # Inside dev and prod files-
├── main.tf                 # Main Terraform configuration
├── variables.tf            # Input variables
├── outputs.tf              # Output values
├── provider.tf             # Azure provider configuration
└── backend.tf              # Remote backend configuration
```

---

## Prerequisites

Before running this project ensure the following tools are installed:

* Terraform
* Azure CLI
* Git
* Azure Subscription

---

## Authentication with Azure

Login using Azure CLI:

```
az login
```

Or configure a **Service Principal** for automation:

```
az ad sp create-for-rbac --name terraform-sp
```

Set the required environment variables:

```
ARM_CLIENT_ID
ARM_CLIENT_SECRET
ARM_SUBSCRIPTION_ID
ARM_TENANT_ID
```

---

## Terraform Workflow

Initialize Terraform:

```
terraform init
```

Validate configuration:

```
terraform validate
```

Generate execution plan:

```
terraform plan
```

Apply infrastructure:

```
terraform apply
```

Destroy infrastructure if required:

```
terraform destroy
```

---

# CI/CD with Azure DevOps

# This repository uses Azure DevOps (ADO) pipelines to automate Terraform deployment.

Pipeline stages typically include:

1. Checkout repository
2. Setup Terraform
3. Terraform Init
4. Terraform Plan
5. Terraform Apply

The pipeline runs automatically on code changes.

---

## Best Practices

* Use **Terraform modules** for reusable infrastructure
* Store **Terraform state in remote backend**
* Use **separate environments (dev/stage/prod)**
* Protect sensitive values using **GitHub Secrets**

---

## Author

Amit Kumar Verma

DevOps | Cloud | Infrastructure Automation
