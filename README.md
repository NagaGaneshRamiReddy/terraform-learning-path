-> TERRAFORM (INFRASTURCTURE AS CODE (IAC)

### **1. Terraform Introduction (Paragraph)

Terraform is an Infrastructure as Code tool developed by HashiCorp. It is used to create, manage, and update cloud infrastructure using code instead of manual work. With Terraform, we can provision resources like EC2, S3, VPC, and Load Balancers in an automated and repeatable way. It helps reduce human errors and makes infrastructure management faster and more reliable.



### **2. Infrastructure as Code (IaC)**

Infrastructure as Code means managing infrastructure using configuration files instead of manually creating resources in the cloud console. In Terraform, we write code that defines what infrastructure we want, and Terraform automatically creates it. This approach makes infrastructure version-controlled, reusable, and easy to scale across different environments.



### **3. Terraform Provider**

A provider in Terraform defines which cloud platform or service Terraform should interact with. For example, if we use the AWS provider, Terraform understands how to create and manage AWS resources. Providers act as a bridge between Terraform and the cloud services.

---

### **4. Terraform Resources**

Resources are the building blocks of Terraform. Each resource represents a real cloud component such as an EC2 instance, S3 bucket, or security group. By defining resources in Terraform code, we can automatically create, update, or delete infrastructure in a controlled manner.


### **5. terraform init**

The `terraform init` command initializes a Terraform project. It downloads the required provider plugins and prepares the working directory for Terraform operations. This command must be run before executing any other Terraform commands like plan or apply.


### **6. terraform plan and terraform apply**

The `terraform plan` command shows a preview of changes that Terraform will make to the infrastructure. It helps us understand what will be created, modified, or destroyed. The `terraform apply` command actually executes those changes and provisions the infrastructure in the cloud.



### **7. Terraform State File**

Terraform uses a state file to keep track of the infrastructure it has created. The state file maps Terraform resources to real cloud resources and stores important information like resource IDs and IP addresses. Without the state file, Terraform cannot manage or update existing infrastructure properly.



### **8. Remote State and State Locking**

Remote state allows the Terraform state file to be stored in a shared location like an S3 bucket instead of a local system. This is useful for team environments. State locking prevents multiple users from modifying the infrastructure at the same time and is commonly implemented using DynamoDB along with S3.



### **9. Terraform Variables**

Variables in Terraform are used to make the code flexible and reusable. Instead of hard-coding values, we define variables and change them based on the environment. This helps in managing different environments like development, testing, and production using the same Terraform code.



### **10. Terraform Outputs**

Outputs are used to display useful information after Terraform creates the infrastructure. For example, we can output the public IP address of an EC2 instance. Outputs are helpful for debugging and for passing information to other tools or scripts in a DevOps pipeline.



### **11. Terraform Modules**

Modules are reusable collections of Terraform code. They help organize infrastructure code and avoid duplication. By using modules, we can follow best practices and manage large infrastructures efficiently across multiple projects and environments.



### **12. Terraform Workspaces**

Workspaces in Terraform allow us to manage multiple environments using the same configuration files. Each workspace has its own state file, which helps isolate resources between environments like dev, stage, and prod.



### **13. Terraform vs CloudFormation**

Terraform is a multi-cloud tool that supports AWS, Azure, and GCP, while CloudFormation is limited to AWS only. Terraform uses a simple and readable language called HCL, whereas CloudFormation uses JSON or YAML. Terraform is more flexible and widely used in DevOps environments.



### **14. Idempotency in Terraform**

Terraform is idempotent, which means running the same Terraform code multiple times will not create duplicate resources. If the infrastructure already matches the code, Terraform will make no changes. This ensures consistency and stability in infrastructure management.



