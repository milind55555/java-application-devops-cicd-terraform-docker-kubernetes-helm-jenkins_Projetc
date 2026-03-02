module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "eks-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]

  enable_nat_gateway = false
  single_nat_gateway = false
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = [var.node_instance_type]
      desired_size   = var.desired_size
      min_size       = 1
      max_size       = 3
    }
  }
}
