# library-template

Template for creating library repository

## Usage

Clone project with [`degit`](https://github.com/Rich-Harris/degit)

```console
$ degit imomaliev/library-template/template library_name
$ cd library_name
```

### Configure terraform

1. Update `_terraform/main.tf`. Available options are [here](https://github.com/imomaliev/terraform-registry/tree/main/modules/github)

    Example:

    ```terraform
    module "github" {
      # https://github.com/imomaliev/terraform-registry/tree/main/modules/github
      source = "git@github.com:imomaliev/terraform-registry.git//modules/github"

      token               = var.github_token
      project_name        = "Library Name"
      project_description = "Discription of Library Name"
      topics              = ["template", "terraform", "pre-commit", "editorconfig"]
    }
    ```

1. Copy `tfvars` file from template
    ```console
    $ cp _terraform/terraform.tfvars{.template,}
    ```
1. Add your github token to `_terraform/terraform.tfvars`
1. Run terraform
    ```console
    $ cd _terraform
    $ terraform init -upgrade
    $ terrafom plan -out
    $ terraform apply
    ```
1. Initialize git repo from created repo by terraform
    ```console
    $ git init
    $ git clone git@github.com:user/library_name.git
    $ git fetch
    $ git checkout -B main origin/main
    ```
1. Commit template files
    ```console
    $ pre-commit install
    $ git add .
    $ git commit -m 'degit imomaliev/library-template/template'
    ```
