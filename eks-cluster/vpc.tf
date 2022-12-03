module "my_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "demo_vpc"
  cidr = "20.10.0.0/16"
  
   
  azs = data.aws_availability_zones.my-azs.names
  private_subnets = ["20.10.1.0/24","20.10.2.0/24","20.10.3.0/24"]
  public_subnets = ["20.10.100.0/24","20.10.101.0/24","20.10.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true
  enable_dns_hostnames = true


  tags = {
    Env = "dev"
    Team = "devops"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/my_eks" = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/my_eks" = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}