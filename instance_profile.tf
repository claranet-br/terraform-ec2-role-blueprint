resource "aws_iam_instance_profile" "ec2_profile" {
  name = "${var.name}"
  path = "${var.path}"
  role = "${aws_iam_role.ec2_role.name}"
}

output "instance_profile" {
  value = {
    id          = "${aws_iam_instance_profile.ec2_profile.id}"
    arn         = "${aws_iam_instance_profile.ec2_profile.arn}"
    path        = "${aws_iam_instance_profile.ec2_profile.path}"
    unique_id   = "${aws_iam_instance_profile.ec2_profile.unique_id}"
  }
}
