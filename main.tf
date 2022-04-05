resource "tls_private_key" "root_ca" {
  algorithm   = var.key_algorithm
  ecdsa_curve = var.ecdsa_curve
  rsa_bits    = var.rsa_bits
}

resource "tls_self_signed_cert" "root_ca" {
  private_key_pem = tls_private_key.root_ca.private_key_pem
  key_algorithm   = var.key_algorithm

  subject {
    common_name         = var.subject.common_name != "" ? var.subject.common_name : var.common_name
    organizational_unit = try(var.subject.organizational_unit)
    organization        = try(var.subject.organization)
    street_address      = try(var.subject.street_address)
    postal_code         = try(var.subject.postal_code)
    locality            = try(var.subject.locality)
    province            = try(var.subject.province)
    country             = try(var.subject.country)
  }

  is_ca_certificate     = true
  validity_period_hours = var.validity_period_hours
  allowed_uses = [
    "cert_signing",
  ]
}
