output "acm_domain_validation_options" {
  value = aws_acm_certificate.website_certificate.domain_validation_options
}

output "cloudfront_domain_name" {
  description = "CloudFront domain to access the site once DNS/content is in place"
  value       = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "route53_hosted_zone_id" {
  description = "Hosted zone ID for the Route53 zone"
  value       = aws_route53_zone.website_zone.id
}

output "route53_name_servers" {
  description = "Name servers for the Route53 zone, to set at IONOS in the step 6 cutover"
  value       = aws_route53_zone.website_zone.name_servers
}