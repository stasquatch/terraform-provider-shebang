resource "tfe_notification_configuration" "slack" {
  name = "slack-integration"
  enabled = true
  destination_type = "slack"
  triggers = ["run:created", "run:planning", "run:needs_attention", "run:applying", "run:completed", "run:errored"]
  url = "https://hooks.slack.com/services/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"
  workspace_external_id = tfe_workspace.noodles_the_dog.external_id
}