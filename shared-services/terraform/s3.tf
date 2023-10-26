data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "demo-${data.aws_caller_identity.current.account_id}-terraform-state-bucket"
  tags = {
    managed_by = "AFT"
    created_by = "terraform-aft-account-customizations"
  }
}
