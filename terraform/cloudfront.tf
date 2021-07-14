resource "aws_cloudfront_distribution" "resume_yourenicked_s3_distribution" {
  origin {
    domain_name = aws_s3_bucket.resume_bucket.bucket_regional_domain_name
    origin_id   = "yourenicked_origin"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "yourenicked resume distribution"
  default_root_object = var.resume-index-file

  aliases = ["resume.yourenicked.net"]

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "yourenicked_origin"


    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 300
    max_ttl                = 300

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }

  tags = {
    project = var.tags_project
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["AU"]
    }
  }

  viewer_certificate {
    acm_certificate_arn = aws_acm_certificate.youre_nicked_cert.arn
    ssl_support_method  = "sni-only"
    minimum_protocol_version = "TLSv1.2_2018"
  }
}

resource "aws_cloudfront_distribution" "fans_yourenicked_s3_distribution" {
  origin {
    domain_name = aws_s3_bucket.fans_bucket.bucket_regional_domain_name
    origin_id   = "yourenicked_origin"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "yourenicked resume distribution"
  default_root_object = var.fans-index-file

  aliases = ["fans.yourenicked.net"]

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "yourenicked_origin"


    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 300
    max_ttl                = 300

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }

  tags = {
    project = var.tags_project
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["AU"]
    }
  }

  viewer_certificate {
    acm_certificate_arn = aws_acm_certificate.youre_nicked_cert.arn
    ssl_support_method  = "sni-only"
    minimum_protocol_version = "TLSv1.2_2018"
  }
}

resource "aws_cloudfront_distribution" "fans_fun_yourenicked_s3_distribution" {
  origin {
    domain_name = aws_s3_bucket.fans_fun_bucket.bucket_regional_domain_name
    origin_id   = "yourenicked_origin"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "yourenicked resume distribution"
  default_root_object = var.fans-index-file

  aliases = ["onlyfans.yourenicked.net"]

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "yourenicked_origin"


    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 300
    max_ttl                = 300

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
  }

  tags = {
    project = var.tags_project
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["AU"]
    }
  }

  viewer_certificate {
    acm_certificate_arn = aws_acm_certificate.youre_nicked_cert.arn
    ssl_support_method  = "sni-only"
    minimum_protocol_version = "TLSv1.2_2018"
  }
}