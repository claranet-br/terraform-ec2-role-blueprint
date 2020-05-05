provider "aws" {
  version             = "~> 2.7"
  allowed_account_ids = ["${var.account}"]
}
