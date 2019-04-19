data "aws_ami" "amazon_linux" {
  most_recent = "true"

  filter {
    name   = "name"
    values = ["amzn-ami-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  name_regex = "^.*x86_64-gp2$"
  owners     = ["amazon"]
}
