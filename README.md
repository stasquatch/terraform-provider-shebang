# terraform-provider-shebang

The whole shebang for testing the tfe provider. This is based off of my [tfc-init repo](https://github.com/acespacecase/tfc-init) which was heavily inspired by many other similar repos internally shared at HashiCorp.
## Setup

In order to manage teams with the provider, you'll need to upgrade from the free tier.

## How to use

Fill out necessary information in `terraform.tfvars.example` and rename the file to `terraform.tfvars`. 

Be sure to have a credentials block corresponding to your `hostname` in `main.tf`. Read the [documentation](https://www.terraform.io/docs/commands/cli-config.html#credentials) for more information about setting up credentials in your `.terraformrc` file.

Run `terraform init`, `terraform plan`, and `terraform apply`.

## Resource Checklist
 - [x] tfe_notification_configuration
 - [x] tfe_oauth_client
 - [x] tfe_organization
 - [ ] tfe_organization_token
 - [x] tfe_policy_set
 - [x] tfe_policy_set_parameter
 - [x] tfe_sentinel_policy
 - [x] tfe_ssh_key
 - [x] tfe_team
 - [x] tfe_team_access
 - [x] tfe_team_member
 - [x] tfe_team_members
 - [x] tfe_team_token
 - [x] tfe_variable
 - [x] tfe_workspace
