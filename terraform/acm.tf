resource "aws_acm_certificate" "youre_nicked_cert" {
  private_key        = file("./tls/cert-key.pem")
  certificate_body   = file("./tls/cert.pem")
  certificate_chain  = file("./tls/cert-chain.pem")

  tags = {
    project = var.tags_project
  }
}