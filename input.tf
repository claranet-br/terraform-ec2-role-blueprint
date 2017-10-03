variable "name" {
  type = "string"
  description = "A name for the role and instance profile"
}

variable "path" {
  type = "string"
  description = "The role context path (default: /)"
  default = "/"
}

variable "policies_arn" {
  type = "list"
  description = "An optional list of IAM Managed Policies ARN to attach to the role (default: none)"
  default = []
}

variable "policies_count" {
  type = "string"
  description = "How many polices has been passed on policies_arn input parameter"
  default = "0"
}
