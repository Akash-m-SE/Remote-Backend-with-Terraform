provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}

resource "aws_instance" "remote-backend-instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  provider      = aws.eu-central-1
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket   = "terraform-remote-backend-state-akash"
  provider = aws.eu-central-1
}