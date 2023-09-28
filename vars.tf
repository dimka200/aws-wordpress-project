variable aws_reg {
  description = "This is aws region"
  default     = "eu-central-1"
  type        = string
}

variable ssh_key {
  default     = "~/.ssh/id_ed25519.pub"
  description = "Default pub key"
}

variable ssh_priv_key {
  default     = "~/.ssh/id_ed25519"
  description = "Default private key"
}
