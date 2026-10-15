variable "name" {
  description = "Name for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
}

variable "security_group_ids" {
  description = "Security groups to attach"
  type        = list(string)
}
variable "subnet_id" {
  description = "ID of the subnet where the ec2 instance will run"
  type        = string

}

