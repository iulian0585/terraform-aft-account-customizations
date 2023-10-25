data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "the_bucket" {
  bucket = "dev-${data.aws_caller_identity.current.account_id}"
  tags = {
    managed_by = "AFT"
    created_by = "terraform-aft-account-customizations"
  }
}
