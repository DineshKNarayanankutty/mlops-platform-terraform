module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.35"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  enable_irsa = true

  cluster_endpoint_public_access  = var.cluster_endpoint_public_access
  cluster_endpoint_private_access = var.cluster_endpoint_private_access

  eks_managed_node_groups = {
    default = {
      instance_types = [var.node_instance_type]

      ami_type      = "AL2023_x86_64_STANDARD"
      capacity_type = "ON_DEMAND"

      min_size     = 1
      max_size     = 2
      desired_size = 1
    }
  }
}
