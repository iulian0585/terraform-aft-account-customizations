data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "the_bucket" {
  bucket = "connect-${data.aws_caller_identity.current.account_id}"
  tags = {
    Name        = "My bucket"
    Environment = "Connect"
  }
}
