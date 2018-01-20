variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-41e0b93b"
    us-west-1 = "ami-79aeae19"
    eu-west-1 = "ami-4d46d534"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
