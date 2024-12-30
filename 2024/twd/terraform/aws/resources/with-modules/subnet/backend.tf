terraform {
  backend "s3" {
    bucket = "nasir-twd-terraform-state-bucket"
    key    = "subnet/terraform.tfstate"
    region = "ap-southeast-1"
  }
}