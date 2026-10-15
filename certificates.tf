provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

resource "aws_acm_certificate" "website_certificate" {
  provider                  = aws.us_east_1
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name    = "monicavillanueva-io-website-certificate"
    Project = var.project_name
  }
}

locals {
  cert_validation_options = {
    for dvo in aws_acm_certificate.website_certificate.domain_validation_options : trimprefix(dvo.domain_name, "*.") => {
      name   = dvo.resource_record_name
      type   = dvo.resource_record_type
      record = dvo.resource_record_value
    }...
  }
}

resource "aws_route53_record" "website_cert_validation_records" {
  for_each = { 
    for name, dvo_list in local.cert_validation_options : name => dvo_list[0]
  }

  zone_id = aws_route53_zone.website_zone.zone_id
  name    = each.value.name
  type    = each.value.type
  ttl     = 60
  records = [each.value.record]
}

resource "aws_acm_certificate_validation" "website_cert_validation" {
  provider                = aws.us_east_1
  certificate_arn         = aws_acm_certificate.website_certificate.arn
  validation_record_fqdns = [for record in aws_route53_record.website_cert_validation_records : record.fqdn]
}
