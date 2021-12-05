variable "key_algorithm" {
  type        = string
  default     = "RSA"
  description = "Key Algorithm (e.g. 'RSA' or 'ECDSA')"
}

variable "ecdsa_curve" {
  type        = string
  default     = null
  description = "May be any of 'P224', 'P256', 'P384' or 'P521', with 'P224' qs the default"
}

variable "rsa_bits" {
  type        = string
  default     = null
  description = "Defaults to 2048"
}

variable "common_name" {
  type = string
}

variable "validity_period_hours" {
  type = number
}
