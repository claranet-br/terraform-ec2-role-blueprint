module "test" {
  source         = "../"
  name           = local.name
  path           = local.path
  description    = local.description
  policies_arn   = local.policies_arn
  policies_count = local.policies_count
}

output "role" {
  value = module.test.role
}

output "instance_profile" {
  value = module.test.instance_profile
}
