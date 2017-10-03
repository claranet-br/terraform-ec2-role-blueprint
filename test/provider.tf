provider "aws" {
  version = "~> 1.0.0"
  allowed_account_ids = ["${var.account}"]
}
