resource "aws_iam_role" "ec2_role" {
  name = "${var.name}"
  path = "${var.path}"

  assume_role_policy = "${file("${path.module}/templates/ec2-role.json")}"
}
