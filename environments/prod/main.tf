module "vpc" {
  source               = "../../modules/vpc"
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "eks" {
  source = "../../modules/eks"

  cluster_name    = var.cluster_name
  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets

  node_instance_type = "t3.large"

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true
}

module "ecr" {
  source = "../../modules/ecr"

  repository_name = "mlops-prod-inference"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "mlops-prod-artifacts-bucket777"
}
