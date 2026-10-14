<<<<<<< HEAD
# terraform-aws-ec2
A beginner-friendly AWS infrastructure project using Terraform to provision an EC2 web server running Nginx, demonstrating reusable modules, variables, outputs, provider configuration, version constraints, and state management
=======
# EC2 + Nginx with Terraform

A beginner project: one EC2 instance running Nginx, a security group that
allows only HTTP (port 80), and state stored in an S3 bucket.

## Prerequisites
- Terraform 1.10 or newer
- AWS CLI configured (`aws configure`) or a named profile
- An S3 state bucket created beforehand (Terraform does not create it)

## One-time backend setup
Create a versioned S3 bucket with the AWS CLI, then put its name in
`backend.tf`. See the setup commands in the lesson notes.

## Commands
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy

## Test
curl http://$(terraform output -raw public_ip)
Wait 1-2 minutes after apply for Nginx to install.

## Cost warning
The instance, its public IPv4 address, and its disk all bill while they exist.
Run `terraform destroy` when finished
>>>>>>> 0644a5f (Add AWS EC2 infrastructure using terraform)
