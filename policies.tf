resource "tfe_sentinel_policy" "always_true_policy" {
  name = "always-true-policy"
  policy = "main = rule { true }"
  organization = tfe_organization.stacy_provider_vartest.name
  enforce_mode = "hard-mandatory"
}

resource "tfe_sentinel_policy" "always_false_policy" {
  name = "always-false-policy"
  policy = "main = rule { false }"
  organization = tfe_organization.stacy_provider_vartest.name
  enforce_mode = "soft-mandatory"
}

resource "tfe_policy_set" "always_true" {
  name = "always-true"
  description = "this policy is always true!"
  organization = tfe_organization.stacy_provider_vartest.id
  workspace_external_ids = ["${tfe_workspace.noodles_the_dog.external_id}"]
  policy_ids = ["${tfe_sentinel_policy.always_true_policy.id}"]
}

resource "tfe_policy_set" "always_false" {
  name = "always-false"
  description = "this policy is always false!"
  organization = tfe_organization.stacy_provider_vartest.id
  workspace_external_ids = ["${tfe_workspace.higgins_the_cat.external_id}"]
  policy_ids = ["${tfe_sentinel_policy.always_false_policy.id}"]
}

resource "tfe_policy_set" "maybe_maybe" {
  name = "maybe-maybe"
  description = "this policy is dependent on a parameter"
  organization = tfe_organization.stacy_provider_vartest.id
  workspace_external_ids = ["${tfe_workspace.higgins_the_cat.external_id}"]
  vcs_repo {
    identifier = "acespacecase/terraform-multi"
    branch = "master"
    ingress_submodules = false
    oauth_token_id = tfe_oauth_client.github.oauth_token_id
  }
}

resource "tfe_policy_set_parameter" "maybe" {
  key = "maybe"
  value = "maybe?"
  policy_set_id = tfe_policy_set.maybe_maybe.id
}