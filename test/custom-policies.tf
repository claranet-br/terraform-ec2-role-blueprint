resource "aws_iam_policy" "sample_policy_1" {
  lifecycle {
    create_before_destroy = true
  }

  name_prefix = "sample-policy-1-${local.name}"
  policy      = "${data.aws_iam_policy_document.sample_policy_1.json}"
}

resource "aws_iam_policy" "sample_policy_2" {
  lifecycle {
    create_before_destroy = true
  }

  name_prefix = "sample-policy-2-${local.name}"
  policy      = "${data.aws_iam_policy_document.sample_policy_2.json}"
}
