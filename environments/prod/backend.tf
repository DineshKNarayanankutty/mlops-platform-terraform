terraform {
  backend "s3" {
    bucket         = "mlops-tf-state-prod1"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
