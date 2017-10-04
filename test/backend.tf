terraform {
  required_version = ">=0.10.0"

  backend "s3" {
    bucket = "495770326048-tfstate"
    key    = "tests/ec2-role-blueprint/terraform.tfstate"
    region = "us-east-1"
  }
}
