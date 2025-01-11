# main.tf inside modules/ec2/

resource "aws_instance" "this" {
  ami           = var.ami           # AMI ID passed as a variable
  instance_type = var.instance_type # Instance type passed as a variable
  tags = {
    Name = var.instance_name  # Name for the EC2 instance
  }

  # Optional: Add a security group for SSH access
  security_groups = ["default"]  # Ensure that the default security group allows SSH access
}

