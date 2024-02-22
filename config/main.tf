terraform {
  required_providers {
    commonfate = {
      source  = "common-fate/commonfate"
      version = "2.9.0"
    }
  }
}
provider "commonfate" {
  # To deploy the stack you must export CF_OIDC_CLIENT_SECRET=<Your Client Secret>
  api_url            = "http://commonfate.example.com"
  oidc_client_id     = "349dfdfkljwerpoizxckf3fds345xcvv"
  oidc_issuer        = "https://cognito-idp.us-east-1.amazonaws.com/us-east-1_jieDxjtS"
}


resource "commonfate_aws_idc_integration" "main" {
  name              = "AWS"
  reader_role_arn   = "arn:aws:iam::123456789012:role/common-fate-prod-idc-reader-role"
  identity_store_id = "d-123456abcd"
  sso_instance_arn  = "arn:aws:sso:::instance/ssoins-34567890vfftygfh"
  sso_region        = "us-east-1"
}