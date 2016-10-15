resource "aws_iam_role_policy_attachment" "ec2_role_attachments" {
    role = "${aws_iam_role.ec2_role.name}"
    policy_arn = "${element(var.policies_arn, count.index)}"

    count = "${var.policies_count}"
}
