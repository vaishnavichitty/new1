module "myvpc1"
  source = "terraform-aws-modules/vpc/aws"

  name = "myvpc1"
  cidr = "10.0.0.0/24"

  azs             = "us-east-1a"
  private_subnets = "10.0.0.0/24"
  public_subnets  = "0.0.0.0/0"

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}