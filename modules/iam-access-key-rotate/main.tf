terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.7"
    }
  }
}

resource "aws_config_config_rule" "ConfigRule" {
  name             = "access-keys-rotated"
  description      = "A config rule that checks whether the active access keys are rotated within the number of days specified in maxAccessKeyAge. The rule is NON_COMPLIANT if the access keys have not been rotated for more than maxAccessKeyAge number of days."
  input_parameters = "{\"maxAccessKeyAge\":\"90\"}"

  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }
  scope {
    compliance_resource_types = []
  }
}
