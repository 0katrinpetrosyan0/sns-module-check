resource "aws_sns_topic" "this" {
  name                              = var.name
  display_name                      = "${var.name}"
  http_success_feedback_role_arn    = aws_iam_role.logger.arn
  http_failure_feedback_role_arn    = aws_iam_role.logger.arn
  http_success_feedback_sample_rate = var.success_sample_percentage
}

resource "aws_sns_topic_subscription" "this" {
  topic_arn = aws_sns_topic.this.arn
  protocol  = "https"
  endpoint  = var.endpoint
}
