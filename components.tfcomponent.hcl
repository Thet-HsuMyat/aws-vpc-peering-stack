component "backend_network" {
  source = "./modules/vpc"

  inputs = {
    name       = "stack-backend-vpc"
    cidr_block = var.backend_vpc_cidr
  }

  providers = {
    aws = provider.aws.tokyo
  }
}

component "frontend_network" {
  source = "./modules/vpc"

  inputs = {
    name       = "stack-frontend-vpc"
    cidr_block = var.frontend_vpc_cidr
  }

  providers = {
    aws = provider.aws.tokyo
  }
}
