# outputs.tf inside modules/ec2/

output "instance_id" {
  value = aws_instance.this.id  # Output instance ID
}

output "public_ip" {
  value = aws_instance.this.public_ip  # Output public IP
}

