#!/bin/bash

extensions=(
    # Git-related
    "eamodio.gitlens"
    "GitHub.copilot"
    "GitHub.copilot-chat"
    "GitHub.vscode-github-actions"
    "mhutchie.git-graph"
    "mikestead.dotenv"
    "ms-azuretools.vscode-docker"
    "redhat.vscode-yaml"
    "timonwong.shellcheck"
    "zhuangtongfa.material-theme"
)

installed_extensions=$(code --list-extensions)

for extension in "${extensions[@]}"
do
    if [[ ! $installed_extensions =~ $extension ]]; then
        code --install-extension "$extension"
    else
        echo "Extension $extension is already installed."
    fi
done