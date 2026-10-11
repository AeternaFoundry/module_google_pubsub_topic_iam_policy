resource "google_pubsub_topic_iam_policy" "pubsub_topic_iam_policies" {
  for_each = var.pubsub_topic_iam_policies

  policy_data = each.value.policy_data
  topic       = each.value.topic
  project     = each.value.project
}

