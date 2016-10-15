resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.name}"
  path = "${var.path}"

  roles = [
    "${aws_iam_role.ec2_role.name}"
  ]
}
