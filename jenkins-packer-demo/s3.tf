resource "aws_s3_bucket" "terraform-state" {
    bucket = "thom-terraform"
    acl = "private"

    tags {
        Name = "Terraform state"
    }
}
