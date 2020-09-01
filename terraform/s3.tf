resource "aws_s3_bucket" "resume_bucket" {
  bucket = var.site-bucket-name
  acl    = "public-read"

  website {
    index_document = var.index-file
  }

  tags = {
    project = var.tags_project
  }
}

resource "aws_s3_bucket_object" "resume_index" {
  bucket        = aws_s3_bucket.resume_bucket.bucket 
  source        = "../${var.index-file}.html"
  key           = var.index-file
  content_type  = "text/html"
  acl           = "public-read"
  etag = filemd5("../${var.index-file}.html")
}