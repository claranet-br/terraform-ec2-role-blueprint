Generic EC2 Role blueprint
===================================

This module creates a Role with an EC2 instance profile associated with it and, optionally, associate a bunch of IAM managed policies to the role.

# Use

To create a bucket with this module you need to insert the following peace of code on your own modules:

```
// Call the module
module "<YOUR_MODULE_NAME>" {
  source = "git::ssh://git@bitbucket.org/credibilit/terraform-ec2-role-blueprint.git?ref=<VERSION>"

  ... <parameters> ...
}
```

Where `<VERSION>` is the desired version of *this* module. The master branch store the list of versions which can be used. The possible parameters are listed in advance on this document.

## TODOs


## Input Parameters

The following parameters are used on this module:

- **account**: The AWS account number ID.

## Output parameters

This are the outputs exposed by this module.
