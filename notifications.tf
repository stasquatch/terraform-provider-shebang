resource "tfe_notification_configuration" "slack" {
  name = "slack-integration"
  enabled = true
  destination_type = "slack"
  triggers = ["run:created", "run:planning", "run:needs_attention", "run:applying", "run:completed", "run:errored"]
  url = var.slack_webhook
  workspace_external_id = tfe_workspace.noodles_the_dog.external_id
}