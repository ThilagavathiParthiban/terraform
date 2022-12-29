# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create multiple EC2 instances
resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0f65671a86f061fcd"
  instance_type = "t2.micro"
}
