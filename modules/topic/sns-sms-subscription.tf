resource "aws_sns_topic" "this-sms" {
  # count = var.create_sms_sns_topic ? 1 : 0
  name = "${var.topic_name}-sms"

  delivery_policy = <<EOF
{
  "http": {
    "defaultHealthyRetryPolicy": {
      "minDelayTarget": 20,
      "maxDelayTarget": 20,
      "numRetries": 3,
      "numMaxDelayRetries": 0,
      "numNoDelayRetries": 0,
      "numMinDelayRetries": 0,
      "backoffFunction": "linear"
    },
    "disableSubscriptionOverrides": false,
    "defaultThrottlePolicy": {
      "maxReceivesPerSecond": 1
    }
  }
}
EOF

}

resource "aws_sns_topic_subscription" "sms" {
  count     = length(var.sns_subscription_phone_number_list)
  topic_arn = aws_sns_topic.this-sms[count.index]
  protocol  = "sms"
  endpoint  = element(var.sns_subscription_phone_number_list, count.index)
}