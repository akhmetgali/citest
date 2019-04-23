variable "aws_region" {
  description = "Region for the VPC"
}

variable "ec2-ip" {
  description = "Elastic IP for EC2 instance"
}
variable "ec2-user" {
  description = "Username for EC2 instance"
}
variable "key_path" {
  description = "SSH Private Key path"
}
variable "ami" {
  description = "ami-id"
}
variable "instance_type" {
  description = "Instance type for EC2"
}
variable "key_name" {
  description = "Public key name for you EC2"
}
variable "subnet_id" {
  description = "Public subnet id, where you want create EC2 instance"
}
variable "security_groups" {
}
