terraform {
    backend "s3" {
        bucket = "monvillanueva-terraform-state"
        key    = "website/terraform.tfstate"
        region = "us-west-2"
        encrypt = true
        use_lockfile = true
    }
}