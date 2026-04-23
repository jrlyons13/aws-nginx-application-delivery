variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, lab, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "CIDR for private subnet A"
  type        = string
}

variable "private_subnet_b_cidr" {
  description = "CIDR for private subnet B"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "AWS key pair name for SSH"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH into instances"
  type        = string
}