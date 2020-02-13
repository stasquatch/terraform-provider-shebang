resource "tfe_ssh_key" "test" {
  name = "my-ssh-key"
  organization = tfe_organization.stacy_provider_vartest.name
  key = "private key that i'm not actually going to post here"
}