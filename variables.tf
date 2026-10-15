variable "aws_region" {
  description = "AWS region where the server is created"
  type        = string
  default     = "eu-west-1"
}

variable "aws_profile" {
  description = "Named AWS CLI profile (null uses the default credentials)"
  type        = string
  default     = null
}

variable "project_name" {
  description = "Short name used in resource names and tags"
  type        = string
  default     = "nginx-demo"
}

variable "environment" {
  description = "Environment label, such as dev or test"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.micro"
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
