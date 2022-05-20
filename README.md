# What is SNS Topic and Subscription
Amazon Simple Notification Service (Amazon SNS) is a managed service that provides message delivery from publishers to subscribers (also known as producers and consumers). Publishers communicate asynchronously with subscribers by sending messages to a topic, which is a logical access point and communication channel. Clients can subscribe to the SNS topic and receive published messages using a supported endpoint type, such as Amazon Kinesis Data Firehose, Amazon SQS, AWS Lambda, HTTP, email, mobile push notifications, and mobile text messages (SMS).

## How
Modules to quickly spin up.
Also using terraform-docs and terraform fmt with pre-commit hooks

## Requirements for pre-commit hooks
for Run our pre-commit hooks you need to install
	- terraform
	- terraform-docs

## Config for GitHooks

```bash
git config core.hooksPath githooks
```

## What
- aws-sns-topic
- aws-sns-subscription
- terraform-docs
- terraform fmt
- pre-commit hooks
