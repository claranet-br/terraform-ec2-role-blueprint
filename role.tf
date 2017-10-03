resource "aws_iam_role" "ec2_role" {
  name                = "${var.name}"
  path                = "${var.path}"
  assume_role_policy  = "${data.aws_iam_policy_document.ec2_role.json}"
  description         = "${var.description}"
}

output "role" {
  value = {
    arn         = "${aws_iam_role.ec2_role.arn}"
    create_date = "${aws_iam_role.ec2_role.create_date}"
    unique_id   = "${aws_iam_role.ec2_role.unique_id}"
    name        = "${aws_iam_role.ec2_role.name}"
    description = "${aws_iam_role.ec2_role.description}"
  }
}
