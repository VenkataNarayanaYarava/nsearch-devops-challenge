terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-cloudfront.git?ref=v2.4.0"
}

include {
  path = find_in_parent_folders()
}

###########################################################
# View all available inputs for this module:
# https://registry.terraform.io/modules/terraform-aws-modules/cloudfront/aws/2.4.0?tab=inputs
###########################################################
inputs = {
  # The default cache behavior for this distribution
  # type: any
  default_cache_behavior = {                     "target_origin_id": "default",                     "viewer_protocol_policy": "allow-all",                 }

  # One or more origins for this distribution (multiples allowed).
  # type: any
  origin = {                     "default": {                         "domain_name": "website.example.com",                         "custom_origin_config": {                             "http_port": 80,                             "https_port": 443,                             "origin_protocol_policy": "match-viewer",                             "origin_ssl_protocols": ["TLSv1"],                         }                     }                 }

  # If enabled, the resource will wait for the distribution status to change from InProgress to Deployed. Setting this tofalse will skip the process.
  # type: bool
  wait_for_deployment = false

  
}
