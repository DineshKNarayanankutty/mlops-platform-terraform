module "vpc" {
  source = "../../modules/vpc"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name        = var.cluster_name
  vpc_id              = module.vpc.vpc_id
  private_subnets     = module.vpc.private_subnets
  node_instance_type  = "t3.medium"
}

module "ecr" {
  source = "../../modules/ecr"

  repository_name = "mlops-dev-inference"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "mlops-dev-artifacts-bucket777"
}