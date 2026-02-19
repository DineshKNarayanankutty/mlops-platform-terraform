terraform {
  backend "s3" {
    bucket       = "mlops-tf-state-prod1"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}
