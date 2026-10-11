variable "pubsub_topic_iam_policies" {
  description = <<EOT
Map of pubsub_topic_iam_policies, attributes below
Required:
    - policy_data
    - topic
Optional:
    - project
EOT

  type = map(object({
    policy_data = string
    topic       = string
    project     = optional(string)
  }))
}

