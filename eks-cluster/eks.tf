module "my_eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.31.2"

  cluster_name = "demo-cluster"
  cluster_version = "1.23"

  vpc_id = module.my_vpc.vpc_id
  subnets = module.my_vpc.private_subnets

  eks_managed_node_groups = {
    one = {
        min_size = 2
        max_size = 4
        desired_size = 3

        instance_type = ["t3.large"]
        
    }
    two = {
        min_size = 2
        max_size = 4
        desired_size = 3

        instance_type = ["t3.large"]

    }
  }


  tags = {
    Env = "dev"
    Team = "devops"
  }

  


}