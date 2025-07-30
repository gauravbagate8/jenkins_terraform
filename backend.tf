terraform {
  backend "s3" {
    bucket = "jenkings-terraform-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
