variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to create."
  type        = string
  default     = "monicavillanueva-io-website"
}

variable "domain_name" {
  description = "The domain name for the website."
  type        = string
  default     = "monicavillanueva.io"
}

variable "index_document" {
  description = "The index document for the S3 bucket."
  type        = string
  default     = "index.html"
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "ionos-to-aws-migration"
}

variable "tf_state_bucket_name" {
  description = "The name of the S3 bucket to store Terraform state."
  type        = string
  default     = "monvillanueva-terraform-state"
}