terraform {
  backend "s3" {
    bucket = "tf-iac-bucket-2028" # change this
    key    = "./terraform.tfstate"
    region = "ap-south-2"
  }
}
