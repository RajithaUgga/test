terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}
#aurhentication to aws account
provider "aws" {
  region     = "us-east-1"
  profile    = "rajitha"
  access_key =
  secret_key = 
}
terraform {
  backend "s3" {
    bucket  = "rajitha-34"
    key     = "terraform/terraform.state"
    region  = "us-east-1"
    profile = "rajitha"
  }
}
#launch instance
resource "aws_instance" "newec2" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  key_name               = "key_docker"
  vpc_security_group_ids = ["sg-0ecae71f52d209129"]
  subnet_id              = "subnet-04294399578fa343f"
  iam_instance_profile   = "krishna"

}