variable "ami" {
  type        = string
  description = "AMI ID for EC2 instance"
  default     = "ami-02774d409be696d81"
}
variable "instance_type" {
  type        = string
  description = "Instance type for EC2 instance"
  default     = "t3.micro"
}
variable "key_name" {
  type        = string
  description = "Key pair name for EC2 instance"
  default     = "terraform_new"
}
variable "region" {
  type        = string
  description = "AWS region for EC2 instance"
  default     = "ap-south-2"
}
variable "subnet_id" {
  type        = string
  description = "Subnet ID for EC2 instance"
  default     = "subnet-013b1acdbc2e064dd"
}
