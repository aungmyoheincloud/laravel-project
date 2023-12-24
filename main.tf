module "vpc" {
  source          = "terraform-aws-modules/vpc/aws"
  version         = "5.1.2"
  # region        = var.aws_region
  cidr            = var.subnet_for_vpc
  azs             = var.availiblity_zone
  private_subnets = var.private_subnets_azs
  public_subnets  = var.public_subnets_azs
  default_security_group_name = var.vpc_security_group_name 
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  ami  =  "ami-0fa377108253bf620"
  instance_type          = "t2.micro"
  key_name               = "laravel for inginx"
  monitoring             = true
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}