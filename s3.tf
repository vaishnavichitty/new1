module "mybucketjin" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "mybucketjin"
  acl    = "private"

  versioning = {
    enabled = true
  }

}