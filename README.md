# terraform-provider-shebang

The whole shebang for testing the tfe provider. This is based off of my [tfc-init repo](https://github.com/acespacecase/tfc-init) which was heavily inspired by many other similar repos internally shared at HashiCorp.

## How to use

Fill out necessary information in `terraform.tfvars.example` and rename the file to `terraform.tfvars`. 

Be sure to have a credentials block corresponding to your `hostname` in `main.tf`. Read the [documentation](https://www.terraform.io/docs/commands/cli-config.html#credentials) for more information about setting up credentials in your `.terraformrc` file.

Run `terraform init`, `terraform plan`, and `terraform apply`.

## Resource Checklist
[ ] tfe_notification_configuration
[x] tfe_oauth_client
[x] tfe_organization
[ ] tfe_organization_token
[ ] tfe_policy_set
[ ] tfe_policy_set_parameter
[ ] tfe_sentinel_policy
[ ] tfe_ssh_key
[ ] tfe_team
[ ] tfe_team_access
[ ] tfe_team_member
[ ] tfe_team_members
[ ] tfe_team_token
[x] tfe_variable
[x] tfe_workspace