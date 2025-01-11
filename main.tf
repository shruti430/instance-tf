# main.tf in the root module

provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

# 1. Call EC2 instance module
module "ec2_instance" {
  source        = "./modules/ec2"  # Path to the EC2 module
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with your AMI ID
  instance_type = "t2.micro"  # Free tier eligible instance type
  instance_name = "ExampleInstance"  # Instance Name
}

# 2. Output instance details
output "instance_id" {
  value = module.ec2_instance.instance_id  # Output instance ID from EC2 module
}

output "instance_public_ip" {
  value = module.ec2_instance.public_ip  # Output public IP from EC2 module
}

