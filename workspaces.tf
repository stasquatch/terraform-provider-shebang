resource "tfe_workspace" "noodles_the_dog" {
    name = "noodles-the-dog"
    organization = tfe_organization.stacy_provider_vartest.name
    vcs_repo {
        identifier = "acespacecase/terraform-variables"
        oauth_token_id = tfe_oauth_client.github.oauth_token_id
    }
}

resource "tfe_workspace" "higgins_the_cat" {
  name = "higgins-the-cat"
  organization = tfe_organization.stacy_provider_vartest.name
  vcs_repo {
    identifier = "acespacecase/terraform-multi"
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
    branch = "noodles"
  }
  auto_apply = true
  working_directory = "/application"
}