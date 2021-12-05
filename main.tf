resource "tls_private_key" "root_ca" {
  algorithm   = var.key_algorithm
  ecdsa_curve = var.ecdsa_curve
  rsa_bits    = var.rsa_bits
}

resource "tls_self_signed_cert" "root_ca" {
  private_key_pem = tls_private_key.root_ca.private_key_pem
  key_algorithm   = var.key_algorithm

  subject {
    common_name = var.common_name
  }

  is_ca_certificate     = true
  validity_period_hours = var.validity_period_hours
  allowed_uses = [
    "cert_signing",
  ]
}
