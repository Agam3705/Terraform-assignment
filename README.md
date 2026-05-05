# Terraform Basic AWS Assignment

## 📌 Overview
This project demonstrates the fundamentals of **Infrastructure as Code (IaC)** using Terraform. The goal is to automate the provisioning of a virtual server (EC2 instance) on Amazon Web Services (AWS) using a declarative configuration language.

## 🎯 Objective
*   **Initialize** a Terraform project environment.
*   **Define and deploy** an AWS EC2 instance.
*   **Utilize** Amazon Linux AMI and specific instance types.
*   **Implement** resource tagging for organization.
*   **Output** real-time data (Public IP) from the cloud.

## 🛠️ Tech Stack & Requirements
*   **Cloud Provider**: AWS (Amazon Web Services).
*   **IaC Tool**: Terraform (v1.x.x+).
*   **CLI**: AWS Command Line Interface (v2.x.x+).
*   **Region**: `ap-south-1` (Mumbai)[cite: 1].

## 📄 Configuration Details
The deployment is defined in `main.tf` with the following parameters:
*   **Resource**: `aws_instance` named `my_instance`[cite: 1].
*   **AMI ID**: `ami-0f58b397bc5c1f2e8` (Amazon Linux 2023)[cite: 1].
*   **Instance Type**: `t3.micro`[cite: 1].
    *   *Note: While the assignment specified `t2.micro`, this was updated to `t3.micro` to maintain **Free Tier eligibility** within the specified region and account constraints[cite: 1].*
*   **Tags**: `Name = "Terraform-Student-Instance"`[cite: 1].

## 🚀 Execution Steps

### 1. Project Initialization
Downloads the necessary AWS provider plugins required to manage resources[cite: 1].
```bash
terraform init
```
## 2. Execution Plan
Generates a preview of the changes. This confirms that 1 resource will be added without actually launching it yet.

```bash
terraform plan
```
## 3. Deployment
Provisions the EC2 instance in the AWS cloud.
```bash
terraform apply
```
When prompted, type yes to confirm the action.

## 4. Verification
Terminal Output: Once complete, the terminal will display the Instance Public IP
AWS Console: Verify the running instance by logging into AWS Console → EC2 → Instances (Region: ap-south-1)
## 5. Cleanup

To prevent unnecessary AWS costs, destroy all provisioned resources after use.
```bash
terraform destroy
```
## 📂 Repository Structure
├── main.tf        # Primary configuration file (provider + resources)

 ├── .gitignore     # Excludes .terraform/ and .tfstate files

 └── README.md      # Project documentation
