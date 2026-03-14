terraform {
  backend "s3" {
    bucket = "tf-iac-bucket-2027" # change this
    key    = "./terraform.tfstate"
    region = "ap-south-2"
  }
}