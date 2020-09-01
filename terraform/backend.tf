terraform {
  backend "s3" {
    bucket = "yourenicked-terraform"
    key    = "resume/tf.state"
    region = "ap-southeast-2"
  }
}