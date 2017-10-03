// Account ID for provider
variable account {}

// Static values
locals {
  name            = "acme-test"
  path            = "/tests/"
  description     = "A test role"
  policies_arn    = [
    "${aws_iam_policy.sample_policy_1.arn}",
    "${aws_iam_policy.sample_policy_2.arn}"
  ]
  policies_count  = 2
}

// 2 sample policies documents
data "aws_iam_policy_document" "sample_policy_1" {
  statement {
    sid = "DescribeEC2"
    effect = "Allow"
    actions = ["ec2:Describe*"]
    resources = ["*"]
  }
}

data "aws_iam_policy_document" "sample_policy_2" {
  statement {
    sid = "DescribeRDS"
    effect = "Allow"
    actions = ["rds:Describe*"]
    resources = ["*"]
  }
}
