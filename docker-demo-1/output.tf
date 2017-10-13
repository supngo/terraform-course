output "myapp-repository-URL" {
  value = "${aws_ecr_repository.simple-web.repository_url}"
}