module "test" {
  source          = "../"

  name            = "${local.name}"
  path            = "${local.path}"
  policies_arn    = "${local.policies_arn}"
  policies_count  = "${local.policies_count}"
}
