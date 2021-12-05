output "private_key_pem" {
  value = tls_private_key.root_ca.private_key_pem
}

output "certificate_pem" {
  value = tls_self_signed_cert.root_ca.cert_pem
}