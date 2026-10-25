identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "dev" {
  inputs = {
    aws_region = "ap-southeast-1"

    role_arn = "arn:aws:iam::672718425217:role/hcp-terraform-role"

    identity_token = identity_token.aws.jwt

    backend_vpc_cidr  = "192.168.0.0/16"
    frontend_vpc_cidr = "10.0.0.0/16"
  }
}
