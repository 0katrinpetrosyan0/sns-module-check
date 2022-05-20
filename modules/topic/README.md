## HOW to use SNS module.

```terraform
module "sns" {
  source                              = "dasmeta/sns/aws//modules/topic"
  version                             = "1.1.1"

  sns_subscription_email_address_list = ["hello@example.com","hello1@example.com"]
  sns_subscription_phone_number_list  = ["+0000000000","2222222222"]
}
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
| [aws_sns_topic.this-email](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.this-opsgenie](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic.this-sms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.email](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.opsgenie](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sns_topic_subscription.sms](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_email_sns_topic"></a> [create\_email\_sns\_topic](#input\_create\_email\_sns\_topic) | Bool for email topic | `bool` | `true` | no |
| <a name="input_create_opsgenie_sns_topic"></a> [create\_opsgenie\_sns\_topic](#input\_create\_opsgenie\_sns\_topic) | Bool for opsgenie topic | `bool` | `true` | no |
| <a name="input_create_sms_sns_topic"></a> [create\_sms\_sns\_topic](#input\_create\_sms\_sns\_topic) | Bool for sms topic | `bool` | `true` | no |
| <a name="input_opsgenie_endpoint"></a> [opsgenie\_endpoint](#input\_opsgenie\_endpoint) | Opsigenie platform integration url | `list(string)` | `[]` | no |
| <a name="input_sns_subscription_email_address_list"></a> [sns\_subscription\_email\_address\_list](#input\_sns\_subscription\_email\_address\_list) | List of email addresses | `list(string)` | `[]` | no |
| <a name="input_sns_subscription_phone_number_list"></a> [sns\_subscription\_phone\_number\_list](#input\_sns\_subscription\_phone\_number\_list) | List of telephone numbers to subscribe to SNS. | `list(string)` | `[]` | no |
| <a name="input_topic_name"></a> [topic\_name](#input\_topic\_name) | SNS topic name. | `string` | `"topic"` | no |

