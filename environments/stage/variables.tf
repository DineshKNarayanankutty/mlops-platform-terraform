variable "region" {
  type = string
}

variable "environment" {
  type    = string
  default = "stage"
}

variable "vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = [
    "10.1.1.0/24",
    "10.1.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  type = list(string)
  default = [
    "10.1.101.0/24",
    "10.1.102.0/24"
  ]
}

variable "cluster_name" {
  type = string
}
