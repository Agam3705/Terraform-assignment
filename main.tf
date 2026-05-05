# 1. Tell Terraform which cloud provider to use
provider "aws" {
  region = "ap-south-1"
}

# 2. Define the EC2 Instance (The Server)
resource "aws_instance" "my_instance" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux AMI
  instance_type = "t3.micro"             # Free tier eligible
  
  tags = {
    Name = "Terraform-Student-Instance"
  }
}

# 3. Ask Terraform to show us the IP address after it's built
output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}