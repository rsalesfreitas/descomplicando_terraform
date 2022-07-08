provider "aws" {
  region  = var.aws_region
}

module "ec2" {
  source = "git@github.com:rsalesfreitas/descomplicando_terraform_module_ec2.git?ref=v.02"
  app_name = "turma1"
  aws_instance = "t3.micro"
}

output "ip_address_ec2" {
  value = module.ec2.ip_address
}