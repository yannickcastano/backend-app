resource "aws_s3_bucket" "default" {
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = var.sse_algorithm
        kms_master_key_id = var.kms_master_key_arn
      }
    }
  }
}

resource "aws_s3_bucket" "default_log_bucket" {
  bucket = "default-log-bucket"
}

resource "aws_s3_bucket_logging" "default" {
  bucket = aws_s3_bucket.default.id

  target_bucket = aws_s3_bucket.default_log_bucket.id
  target_prefix = "log/"
}