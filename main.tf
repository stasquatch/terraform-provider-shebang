provider "tfe" {
    hostname = var.hostname
}

resource "tfe_organization" "stacy_provider_vartest" {
    name = "stacy_provider_vartest"
    email = var.email
}

resource "tfe_oauth_client" "github" {
    organization = tfe_organization.stacy_provider_vartest.name
    api_url = "https://api.github.com"
    http_url = "https://github.com"
    oauth_token = var.TF_VAR_GITHUB_TOKEN
    service_provider = "github"
}
