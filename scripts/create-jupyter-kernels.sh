#!/bin/bash

# This script creates virtual envs per lesson
# to make sure the packages/versions of one lesson are not influencing the other
create_env() {
    NAME=$1

    if [ -z "$NAME" ]; then
        echo "Please provide a name for the environment."
        exit 1
    fi

    python -m venv $HOME/my-envs/$NAME
    . $HOME/my-envs/$NAME/bin/activate
    pip install ipykernel ipywidgets
    python -m ipykernel install --user --name=$NAME
}

# Call the function with the desired environment name
cd /workspaces/genai-devops-workshop
for file in `ls lessons`; do
    echo $file
    create_env $file
done
#create_env "my-environment"