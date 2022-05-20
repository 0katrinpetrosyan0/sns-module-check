## How to use SNS module with Multiple Subscribers.

```terraform
provider "aws" {
  region = "us-east-1"
}

locals {
  sns_topic_subscriptions = [
    {
      name                   = "sns"
      topic_arn              = "arn:aws:sns:us-east-1:565580475168:sns"
      protocol               = "email"
      endpoint               = "example@gmail.com"
      endpoint_auto_confirms = false
    },
    {
      name                   = "sns"
      topic_arn              = "arn:aws:sns:us-east-1:565580475168:sns"
      protocol               = "sms"
      endpoint               = "+00000000"
      endpoint_auto_confirms = false
    },
    {
      name                   = "sns"
      topic_arn              = "arn:aws:sns:us-east-1:565580475168:sns"
      protocol               = "lambda"
      endpoint               = "some_arn"
      endpoint_auto_confirms = false
    },
  ]
}

module "subscriptions" {
  source                  = "dasmeta/sns/aws//modules/topic""
  version                             = "1.0.1"
  sns_topic_subscriptions = local.sns_topic_subscriptions
}
```


## Minimum configuration.

```terraform
provider "aws" {
  region = "us-east-1"
}

locals {
  sns_topic_subscriptions = [
    {
      name                   = "sns"
      topic_arn              = "arn:aws:sns:us-east-1:565580475168:sns"
      protocol               = "https"
      endpoint               = "..."
      endpoint_auto_confirms = false
    }
  ]
}

module "subscriptions" {
  source                  = "dasmeta/sns/aws//modules/topic""
  version                             = "1.0.1"
  sns_topic_subscriptions = local.sns_topic_subscriptions
}
```

## Protocols for SNS Subscription
```terraform
`Amazon SQS`
`AWS Lambda`
`Email`
`Email-JSON`
`HTTP`
`HTTPS`
`SMS`
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.50.0 |

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_sns_topic"></a> [create\_sns\_topic](#input\_create\_sns\_topic) | Bool topic | `bool` | `true` | no |
| <a name="input_sns_topic_subscriptions"></a> [sns\_topic\_subscriptions](#input\_sns\_topic\_subscriptions) | SNS Subscriptions | <pre>list(object({<br>    name                   = string<br>    topic_arn              = string<br>    protocol               = string<br>    endpoint               = string<br>    endpoint_auto_confirms = bool<br>  }))</pre> | `[]` | no |
| <a name="input_topic_name"></a> [topic\_name](#input\_topic\_name) | SNS topic name. | `string` | `"topic"` | no |
