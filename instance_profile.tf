resource "aws_iam_instance_profile" "this" {
  lifecycle {
    create_before_destroy = true
  }

  name_prefix = "${var.name}-"
  path        = "${var.path}"
  role        = "${aws_iam_role.this.name}"
}

output "instance_profile" {
  description = "Map for EC2 instance profile values"
  value = {
    id          = "${aws_iam_instance_profile.this.id}"
    arn         = "${aws_iam_instance_profile.this.arn}"
    path        = "${aws_iam_instance_profile.this.path}"
    unique_id   = "${aws_iam_instance_profile.this.unique_id}"
  }
}
