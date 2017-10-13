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
    us-east-1 = "ami-d651b8ac"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}
variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.73.2"
}

variable "TERRAFORM_VERSION" {
  default = "0.10.7"
}

variable "PACKER_VERSION" {
  default = "1.1.0"
}

variable "APP_INSTANCE_COUNT" {
  default = "0"
}