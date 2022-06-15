terraform {
  backend "s3" {
    bucket = "vamsi-terraform-s3-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}