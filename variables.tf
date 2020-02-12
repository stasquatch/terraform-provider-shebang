variable "TF_VAR_GITHUB_TOKEN" {}
variable "email" {}

resource "tfe_variable" "pet_name_length" {
    key = "pet_name_length"
    value = "5"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "chosen_separator" {
    key = "chosen_separator"
    value = " ... "
    description = "stilasdfl testing"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "separate" {
    key = "separate"
    value = "value"
    description = "stiasdfll testing"
    category = "terraform"
    workspace_id = tfe_workspace.noodles_the_dog.id
}

resource "tfe_variable" "prefix" {
    key = "TF_VAR_prefix"
    value = "madam"
    description = "lasasdft test" 
    category = "env"
    workspace_id = tfe_workspace.noodles_the_dog.id
}