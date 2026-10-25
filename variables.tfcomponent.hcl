variable "aws_region" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "backend_vpc_cidr" {
  type = string
}

variable "frontend_vpc_cidr" {
  type = string
}
