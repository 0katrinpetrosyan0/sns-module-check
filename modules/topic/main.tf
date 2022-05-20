resource "aws_sns_topic" "this" {
  count = var.create_sns_topic ? 1 : 0
  name = "${var.topic_name}"

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

resource "aws_sns_topic_subscription" "this" {
  for_each               = { for i in var.sns_topic_subscriptions : "${i.name}:${i.protocol}:${i.endpoint}" => i }
  topic_arn              = aws_sns_topic.this[0].arn
  protocol               = each.value.protocol
  endpoint               = each.value.endpoint
  endpoint_auto_confirms = each.value.endpoint_auto_confirms
}