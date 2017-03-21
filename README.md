# bash-dev-scripts

Linux bash scripts that I find useful for development

They are designed to be cloned into a subdirectory of your multi-workspace base path which you choose by the repo clone placement (see below).  Multiple projects / individual workspaces are then placed into this location to happily coexist

    $ tree .
    .
    |- multi-workspace
    |  |- bash-dev-scripts
    |  |  |- docker-clear-state             (remove all any images or containers that match and their dependants)
    |  |  |- docker-ensure-image-loaded     (load a previously built image)
    |  |  |- dockerfiles-build              (build all docker directories passed in on stdin that have no loaded images)
    |  |  |- docker-find-dependants         (match anything against the args or stdin and return any dependants)
    |  |  |- docker-run-image               (run a saved image by creating a container if not already present)
    |  |  |- find-latest-change-epoch-time  (identify the latest file modification time in the directory trees specified)
    |  |  |- function-git-prompt            (tweaked version of the classic git-prompt.sh; needs to be sourced in .bashrc)
    |  |  |- get-repo-base-path             (get the absolute multi-workspace path)
    |  |  |- set-github-user                (set user.name and user.email to be correct for github)
    |  |  `- source-auto-gopath             (source the correct GOPATH for a go project; invoke as ". source-go-path")
    |  |- other projects

The following environment variables are expected to be exported:
* GITHUB_USERNAME
* GITHUB_EMAIL
* PATH (to include the bash-dev-scripts directory)
* (optional) GIT_PS1_SHOWDIRTYSTATE="SHOWDIRTYSTATE"
* (optional) GIT_PS1_SHOWUNTRACKEDFILES="SHOWUNTRACKEDFILES"
* (optional) GIT_PS1_SHOWUPSTREAM="SHOWUPSTREAM"
* (optional) GIT_PS1_SHOWTOPLEVEL="SHOWTOPLEVEL"
* (example) PS1='\[\033[30m\][\u@\h\[\033[33m\]$(__git_ps1 " (%s)")\[\033[32m\] \W\[\033[30m\]]\[\033[0m\]\$ '
