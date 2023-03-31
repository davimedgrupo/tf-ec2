variable "aws_region" {
  type        = string
  description = ""
}

variable "instance_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "subnet_public_id" {
  type = string
}

variable "security_group" {
  type = string
 }

variable "key_name" {
  type = string
}