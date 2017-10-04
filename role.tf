resource "aws_iam_role" "this" {
  lifecycle {
    create_before_destroy = true
  }

  name_prefix         = "${var.name}-"
  path                = "${var.path}"
  assume_role_policy  = "${data.aws_iam_policy_document.this.json}"
  description         = "${var.description}"
}

output "role" {
  value = {
    arn         = "${aws_iam_role.this.arn}"
    create_date = "${aws_iam_role.this.create_date}"
    unique_id   = "${aws_iam_role.this.unique_id}"
    name        = "${aws_iam_role.this.name}"
    description = "${aws_iam_role.this.description}"
  }
}
