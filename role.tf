resource "aws_iam_role" "ec2_role" {
  name                = "${var.name}"
  path                = "${var.path}"
  assume_role_policy  = "${data.aws_iam_policy_document.ec2_role.json}"
  description         = "${var.description}"
}
