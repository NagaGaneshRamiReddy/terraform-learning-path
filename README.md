# Terraform AWS EC2 Infrastructure Automation

## Project Title

**AWS EC2 Infrastructure Provisioning using Terraform (IaC)**

## Overview

This project demonstrates end-to-end automation of AWS EC2 infrastructure using **Terraform**. The goal is to provision, manage, and modify cloud resources in a repeatable, scalable, and version-controlled way using Infrastructure as Code (IaC).

The project provisions **multiple EC2 instances**, configures **security groups**, applies **dynamic tagging**, and manages infrastructure lifecycle using Terraform commands.

---

## Problem Statement

Manual creation of EC2 instances via the AWS Console is error-prone, time-consuming, and not scalable. Organizations need an automated, reproducible approach to create and manage infrastructure.

---

## Solution

Using **Terraform**, I automated the provisioning of AWS infrastructure by:

* Defining infrastructure declaratively in `.tf` files
* Using Terraform state to track resources
* Creating multiple EC2 instances using `count`
* Applying consistent naming using dynamic tags
* Managing security groups centrally

---

## Architecture

**Region:** us-east-1 (N. Virginia)

**Resources Created:**

* AWS EC2 Instances (2)
* AWS Security Group
* Terraform State & Lock files

---

## Technologies Used

* **Terraform**
* **AWS EC2**
* **AWS Security Groups**
* **GitHub Codespaces**
* **Linux / Bash**

---

## Key Terraform Components

### 1. Provider Configuration

```hcl
provider "aws" {
  region = "us-east-1"
}
```

### 2. Security Group Configuration

* SSH access (Port 22)
* HTTP access (Port 80)

```hcl
resource "aws_security_group" "web_sg" {
  name = "web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

### 3. EC2 Instance Creation (Multiple Instances)

```hcl
resource "aws_instance" "ec2" {
  count           = 2
  ami             = "ami-0ecb62995f68bb549"
  instance_type   = "t3.micro"
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "R.N.GANSEH-${count.index + 1}"
  }
}
```

---

## Terraform Commands Used

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

---

## Output & Verification

* Successfully created **2 EC2 instances**
* Instances visible in AWS Console
* Status checks passed (3/3)
* Instances named dynamically:

  * R.N.GANSEH-1
  * R.N.GANSEH-2

---

## Key Learnings

* Infrastructure as Code best practices
* Managing multiple resources using `count`
* AWS Security Group configuration
* Terraform state management
* Real-world AWS automation workflow

---

## Resume Bullet Points

You can directly use these points in your resume:

* Automated AWS EC2 infrastructure provisioning using Terraform (IaC)
* Created and managed multiple EC2 instances using Terraform `count`
* Designed and implemented AWS Security Groups for SSH and HTTP access
* Used dynamic tagging for instance identification and scalability
* Managed Terraform state and executed lifecycle commands (init, plan, apply)
* Deployed infrastructure in AWS us-east-1 region using GitHub Codespaces

---

## GitHub Repository

**Repository:** terraform-learning-path

---

## Author

**R. Naga Ganesh**

AWS | DevOps | Terraform | Cloud Automation

---

*This project demonstrates practical DevOps and Cloud Infrastructure skills suitable for entry-level to mid-level DevOps roles.*
