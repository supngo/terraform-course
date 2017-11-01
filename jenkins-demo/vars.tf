variable "AWS_REGION" {
  default = "us-east-1"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "../mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "../mykey.pub"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-c998b6b2"
    us-east-2 = "ami-cfdafaaa"
    us-west-1 = "ami-66eec506"
  }
}