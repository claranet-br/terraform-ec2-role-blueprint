output "role" {
  value = "${aws_iam_role.ec2_role.name}"
}

output "role_arn" {
  value = "${aws_iam_role.ec2_role.arn}"
}

output "instance_profile" {
  value = "${aws_iam_instance_profile.ec2_profile.name}"
}

output "instance_profile_arn" {
  value = "${aws_iam_instance_profile.ec2_profile.arn}"
}
