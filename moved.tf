moved {
    from = aws_s3_bucket.website_bucket
    to   = aws_s3_bucket.website
}

moved {
    from = aws_s3_bucket_public_access_block.website_bucket_public_access_block
    to   = aws_s3_bucket_public_access_block.website
}

moved {
    from = aws_s3_bucket_ownership_controls.website_bucket_ownership_controls
    to   = aws_s3_bucket_ownership_controls.website
}

moved {
    from = aws_s3_bucket_versioning.website_bucket_versioning
    to   = aws_s3_bucket_versioning.website
}

moved {
    from = aws_s3_bucket_server_side_encryption_configuration.website_bucket_encryption
    to   = aws_s3_bucket_server_side_encryption_configuration.website
}

moved {
    from = aws_s3_bucket_policy.website_bucket_policy
    to   = aws_s3_bucket_policy.website
}

moved {
    from = aws_iam_policy_document.website_bucket_policy_document
    to   = aws_iam_policy_document.website_bucket    
}

moved {
    from = aws_cloudfront_origin_access_control.s3_oac
    to   = aws_cloudfront_origin_access_control.s3_website
}

moved {
    from = aws_cloudfront_distribution.s3_distribution
    to   = aws_cloudfront_distribution.website
}

moved {
    from = aws_acm_certificate.website_certificate
    to   = aws_acm_certificate.website
}

moved {
    from = aws_acm_certificate_validation.website_cert_validation
    to   = aws_acm_certificate_validation.website
}