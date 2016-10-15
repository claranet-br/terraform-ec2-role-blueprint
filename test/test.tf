/* Unit test file for module
 * =========================
 * Declare the folowing variables in environment to execute this code:
 * - AWS_ACCESS_KEY_ID
 * - AWS_SECRET_ACCESS_KEY
 * - AWS_DEFAULT_REGION
 * - AWS_SECURITY_TOKEN (if applicable)
 */

/* AWS account
 * Declare this on TF_VAR_account environment variable with your AWS account id
 * for the test account
 */
variable account {}

resource "aws_iam_policy" "sample_policy_1" {
  name = "acme-sample-policy-1"
  policy = "${file("templates/sample-policy-1.json")}"
}

resource "aws_iam_policy" "sample_policy_2" {
  name = "acme-sample-policy-2"
  policy = "${file("templates/sample-policy-2.json")}"
}

// Call the module
module "test_role" {
  source = "../"

  account = "${var.account}"
  name = "acme-test"
  policies_arn = [
    "${aws_iam_policy.sample_policy_1.arn}",
    "${aws_iam_policy.sample_policy_2.arn}"
  ]
  policies_count = 2
}
