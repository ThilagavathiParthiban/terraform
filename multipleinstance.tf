# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Define variables
variable "instance_count" {
  default = 3
}

variable "instance_type" {
  default = "t2.micro"
}

# Create multiple EC2 instances
resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = "ami-0f65671a86f061fcd"
  instance_type = var.instance_type
}

terraform apply -var 'instance_count=5' -var 'instance_type=t2.small'
