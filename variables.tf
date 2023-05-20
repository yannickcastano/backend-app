variable "sse_algorithm" {
  default     = "AES256"
}

variable "kms_master_key_arn" {
  default     = ""
}

variable "enabled" {
  default = module.learn_terraform.region == "something to produce false" ? true : false
}