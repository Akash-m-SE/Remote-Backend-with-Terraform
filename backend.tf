terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-state-akash"
    key    = "akash/terraform.tfstate"
    region = "eu-central-1"
  }
}