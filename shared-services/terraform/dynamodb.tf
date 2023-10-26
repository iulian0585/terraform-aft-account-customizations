resource "aws_dynamodb_table" "terraform_state_dynamodb_table" {
  name           = "demo-terraform-state-dynamodb-table"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    managed_by = "AFT"
    created_by = "terraform-aft-account-customizations"
  }
}