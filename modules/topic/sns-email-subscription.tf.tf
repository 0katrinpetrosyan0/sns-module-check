resource "aws_sns_topic" "this-email" {
  count = var.create_email_sns_topic ? 1 : 0
  name = "${var.topic_name}-email"
  

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

resource "aws_sns_topic_subscription" "email" {
  count     = length(var.sns_subscription_email_address_list)
  topic_arn = aws_sns_topic.this-email[count.index]
  protocol  = "email"
  endpoint  = element(var.sns_subscription_email_address_list, count.index)
}