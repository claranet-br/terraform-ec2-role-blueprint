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

// Call the module
module "test_role" {
  source = "../"

  account = "${var.account}"
}
