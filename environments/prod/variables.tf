variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "cluster_name" {
  type    = string
  default = "mlops-prod-cluster"
}

variable "vpc_cidr" {
  type    = string
  default = "10.2.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = [
    "10.2.1.0/24",
    "10.2.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  type = list(string)
  default = [
    "10.2.101.0/24",
    "10.2.102.0/24"
  ]
}
