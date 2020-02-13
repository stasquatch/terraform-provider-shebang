resource "tfe_team" "pasta" {
  name         = "spaghetti"
  organization = tfe_organization.stacy_provider_vartest.name
}

resource "tfe_team" "sushi" {
  name         = "nigiri"
  organization = tfe_organization.stacy_provider_vartest.name
}

resource "tfe_team_access" "noodles" {
  access       = "admin"
  team_id      = tfe_team.sushi.id
  workspace_id = tfe_workspace.higgins_the_cat.id
}

resource "tfe_team_member" "nsheldrick" {
  team_id  = tfe_team.sushi.id
  username = "nsheldrick"
}

resource "tfe_team_members" "pasta" {
  team_id   = tfe_team.pasta.id
  usernames = ["nsheldrick"]
}

resource "tfe_team_token" "test" {
  team_id = tfe_team.sushi.id
}
