# S3 bucket for backups
resource "aws_s3_bucket" "test_dataobrii" {
    
    bucket = var.s3_bucket

    lifecycle {
      prevent_destroy = true
    }
}

