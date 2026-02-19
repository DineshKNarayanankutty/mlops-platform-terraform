provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "mlops-platform"
      Environment = var.environment
      ManagedBy   = "terraform"
      Owner       = "platform-team"
    }
  }
}
