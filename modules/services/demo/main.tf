resource "aws_s3_bucket" "b" {
  bucket = "dblooman-my-tf-test-bucket"
  acl    = "private"
}

module "ami" {
  source = "../../aws_example"
}
