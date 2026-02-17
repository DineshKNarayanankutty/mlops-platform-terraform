terraform {
  backend "s3" {
    bucket       = "mlops-tf-state-prod"
    key          = "prod/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}
