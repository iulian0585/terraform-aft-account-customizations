data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "demo-${data.aws_caller_identity.current.account_id}-terraform-state-bucket"
  tags = {
    managed_by = "AFT"
    created_by = "terraform-aft-account-customizations"
  }
}

resource "aws_s3_bucket_versioning" "versioning_terraform_state_bucket" {
  bucket = aws_s3_bucket.terraform_state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}