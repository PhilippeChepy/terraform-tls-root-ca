output "private_key_pem" {
  description = "The private key of the certificate."
  value       = tls_private_key.root_ca.private_key_pem
}

output "certificate_pem" {
  description = "The resulting certificate."
  value       = tls_self_signed_cert.root_ca.cert_pem
}