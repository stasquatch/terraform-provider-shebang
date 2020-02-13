variable "TF_VAR_GITHUB_TOKEN" {}
variable "email" {}
variable "hostname" {}
variable "slack_webhook" {}

resource "tfe_variable" "pet_name_length1" {
    key = "pet_name_length1"
    value = "5"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "chosen_separator1" {
    key = "chosen_separator1"
    value = " ... "
    description = "stilasdfl testing"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "separate1" {
    key = "separate1"
    value = "value"
    description = "stiasdfll testing"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "prefix1" {
    key = "TF_VAR_prefix1"
    value = "madam"
    description = "lasasdft test" 
    category = "env"
    workspace_id = tfe_workspace.noodles_the_dog.id
}