variable "topic_name" {
  type        = string
  default     = "topic"
  description = "SNS topic name."
}

variable "create_sns_topic" {
  type        = bool
  default     = true
  description = "Bool topic"
}

variable "sns_topic_subscriptions" {
  type = list(object({
    name                   = string
    topic_arn              = string
    protocol               = string
    endpoint               = string
    endpoint_auto_confirms = bool
  }))
  default     = []
  description = "SNS Subscriptions"
}