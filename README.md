# bash-dev-scripts

Linux bash scripts that I find useful for development

They are designed to be cloned into a subdirectory of your multi-workspace base path which you choose by the repo clone placement (see below).  Multiple projects / individual workspaces are then placed into this location to happily coexist

    $ tree .
    .
    |-- multi-workspace
    |    |-- bash-dev-scripts
    |    |   |-- get-repo-base-path         (get the absolute multi-workspace path)
    |    |   |-- LICENSE
    |    |   |-- set-github-user            (set user.name and user.email to be correct for github)
    |    |   `-- source-auto-gopath         (source the correct GOPATH for a go project; invoke as ". source-go-path")
    |    |-- other projects

The following environment variables are expected to be set:
* GITHUB_USERNAME
* GITHUB_EMAIL
* PATH (to include the bash-dev-scripts directory)
