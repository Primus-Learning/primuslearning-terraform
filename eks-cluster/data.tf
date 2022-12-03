data "aws_eks_cluster" "my_cluster" {
    name = module.my_eks.cluster_id
}

data "aws_eks_cluster_auth" "my_auth" {
    name = module.my_eks.cluster_id
}

data "aws_availability_zones" "my-azs" {
  state = "available"
}