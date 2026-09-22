module "networking" {
  source = "../networking-root"

  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "compute" {
  source = "../compute"

  ami_id        = "ami-0fef201115eefe936"
  instance_type = "t2.micro"

  subnet_id = module.networking.subnet_id
}