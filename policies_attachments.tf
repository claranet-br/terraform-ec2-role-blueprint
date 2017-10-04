resource "aws_iam_role_policy_attachment" "this" {
  lifecycle {
    create_before_destroy = true
  }

  role        = "${aws_iam_role.this.name}"
  policy_arn  = "${element(var.policies_arn, count.index)}"

  count       = "${var.policies_count}"
}
