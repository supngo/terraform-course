variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  #default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  default = ["us-east-1a"]
}

resource "aws_instance" "example" {
  count = 1
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.small"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.allow-all.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.mykeypair.key_name}"

  availability_zone = "${element(var.azs, count.index+1)}"

  provisioner "local-exec" {
     command = "sudo yum install git"
  }

  tags {
    Name = "docker-${count.index+1}"
  }
}
