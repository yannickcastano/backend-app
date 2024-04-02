module "learn_terraform" {
  source = "https://github.com/hashicorp/learn-terraform-provision-eks-cluster.git"
  version = "1.16.0"

  name        = "s3-bucket"
}

resource "aws_s3_bucket" "destination" {
  bucket = "tf-test-bucket-destination-12345"
  versioning {
    enabled = var.enabled
  }
}

resource "aws_s3_bucket" "destination_log_bucket" {
  bucket = "destination-log-bucket"
}

resource "aws_s3_bucket_logging" "destination" {
  bucket = aws_s3_bucket.destination.id

  target_bucket = aws_s3_bucket.destination_log_bucket.id
  target_prefix = "log/"
}