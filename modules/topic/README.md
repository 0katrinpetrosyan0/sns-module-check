## Soon Here will be created SNS module.

```terraform
module "sns" {
  providers = {
    aws = aws.virginia
  }
  topic_name                          = "topic-name"  
  source                              = "dasmeta/modules/aws//topic/"
  version                             = "0.16.6"
  sns_subscription_email_address_list = ["hello@example.com"]
  sns_subscription_phone_number_list  = ["+55555555"]
}

```