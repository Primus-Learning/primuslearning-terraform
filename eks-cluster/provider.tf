
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

provider "kubernetes" {
  load_config_file = "false"
  host = data.aws_eks_cluster.my_cluster.endpoint
  token = data.aws_eks_cluster_auth.my_auth.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.my_cluster.certificate_authority[0].data)
}
