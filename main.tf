resource "aws_instance" "aws" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  region        = var.region
  subnet_id     = var.subnet_id

  tags = {
    Name = "EC2_terraform"
  }
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "tf-iac-bucket-2027"
}
