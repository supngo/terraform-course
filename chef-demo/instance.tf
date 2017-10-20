 resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"

  # the security group
  vpc_security_group_ids = ["${aws_security_group.allow-ssh-https.id}"]

  # the public SSH key
  key_name = "${aws_key_pair.mykeypair.key_name}"
}