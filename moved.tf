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
