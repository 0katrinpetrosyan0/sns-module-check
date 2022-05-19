variable "topic_name" {
  type        = string
  default     = "topic"
  description = "SNS topic name."
}

variable "sns_subscription_email_address_list" {
  type        = list(string)
  default     = []
  description = "List of email addresses"
}

variable "sns_subscription_phone_number_list" {
  type        = list(string)
  default     = []
  description = "List of telephone numbers to subscribe to SNS."
}

variable "opsgenie_endpoint" {
  type        = list(string)
  default     = []
  description = "Opsigenie platform integration url"
}

variable "create_email_sns_topic" {
  type        = bool
  default     = true
  description = "Bool for email topic"
}

variable "create_opsgenie_sns_topic" {
  type        = bool
  default     = true
  description = "Bool for opsgenie topic"
}

variable "create_sms_sns_topic" {
  type        = bool
  default     = true
  description = "Bool for sms topic"
}
