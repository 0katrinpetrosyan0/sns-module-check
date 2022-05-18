variable "name" {
  type        = string
  description = "Name (e.g. app or cluster)."
}

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

variable "sms_message_body" {
  type    = string
  default = "sms_message_body"
}
#######

variable "name" {
  type        = string
  description = "Name (e.g. app or cluster)."
}

variable "endpoint" {
  type        = string
  description = "The endpoint to send POST request data to, the contents will vary with the protocol."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Controls if cronjob enabled or not"
}

variable "input" {
  type        = any
  default     = {}
  description = "The data, input to set into POST request body Message field."
}

variable "schedule" {
  type        = any
  default     = "cron(* * * * ? *)"
  description = "the aws cloudwatch event rule schedule expression that specifies when the scheduler runs. See https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html"
}

variable "success_sample_percentage" {
  type        = string
  default     = 100
  description = "Percentage of success to sample"
}
