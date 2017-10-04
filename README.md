EC2 Role blueprint
===

This blueprint creates an IAM Role and EC2 instance profile associated with it, also, you can attach a set of IAM Managed Policies to the Role if passed as parameters.

Its a best practice in AWS environmentt use roles to attach to the EC2 instances instead of store AWS credentials inside instances.

# Sample use

To create an role and profile for your EC2 use the piece of code bellow.

```
module "test" {
  source          = "git::https://bitbucket.org/credibilit/terraform-ec2-role-blueprint.git?ref=<VERSION>"

  name            = "..."
  path            = "..."
  description     = "..."
  policies_arn    = [...]
  policies_count  = "..."
}
```

Where `<VERSION>` is the desired version of *this* module. The master branch store the list of versions which can be used. The possible parameters are listed in advance on this document.

## Compatibilities

The version 1.0.0 and above are created to be used with Terraform 0.10 (possibly its compatible with 0.9, but this was not tested). For version 0.8 use version 0.0.1 or the latest version tagged from a commit from 0.8.x branch.

# Input Parameters

The following parameters are used on this module:

- `name`: the name prefix for all resources created on this blueprint.
- `path`: the IAM path for the Role and Profile (default: "/").
- `description`: a optional description for the EC2 role (default: "").
- `policies_arn`: a list of policies ARN to attach with this role (default: []). **If you use this parameter, you need to set the `policies_count` parameter bellow**.
- `policies_count`: the number of policies ARN to attach with the EC2 role. **Must be in sync with the number of policies_arn on the parameter above**.

## Output parameters

This are the outputs exposed by this module.

* `instance_profile`: the values for the EC2 instance profile.
    - `arn`: The instance profile Amazon Resource Name.
    - `id`: The instance profile name.
    - `path`: The instance profile path.
    - `unique_id`: The instance profile unique id inside. AWS.
* `role`: The values for the EC2 role.
    - `arn`: The role Amazon Resource Name
    - `create_date`: The role creation date.
    - `description`: The role description.
    - `name`: The role name.
    - `unique_id`: The role unique id inside AWS.
}
