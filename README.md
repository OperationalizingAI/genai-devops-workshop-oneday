# Basic information about running this repo

## Python
- We use Python as programming languange in this course - <https://www.python.org/>
- Python is/was popular as a coding language for system administrators
- The language has been adopted by the Data Science/Machine learning community
- The code should be fairly easy to understand
- Packages in Python are installed using `pip` , `pip -q` indicates pip to be less verbose

## Jupyter Notebooks
- Lessons are in Jupyter notebook form. <https://jupyter.org/>
- Notebooks are a mixture of markdown and codeblocks and allow for easy experimentation

- When running a Notebook you need to select a "kernel" , this is a virtual python environment
- You can see the button "select kernel" on the right upperhand
- While you can run each lesson in the same kernel, we select different kernels to avoid dependency conflicts
- There should be a kernel for each lesson
- You can reset a kernel to make it start from scratch again
- You can run a notebook step by step, or run all

## VScode
- We use VSCode as our code editor
- It has extensions/plugins for python installed
- Under the `Go` menu there is a command pallete
- Usefull commands:
    - `Dev containers : rebuild container`
    - `Dev containers : open workspace in container`
    - `Developer : reload windows`

## Devcontainer and Docker
- We make use of a `devcontainer`, a way of running our code in a docker container
- As the base container we use a python distribution from Microsoft
- If you are running this repo locally, you'll need to have Docker installed
- The use of a devcontainer makes it easy for us to run it in Github Codespaces
- To achieve compatibility , we run the container in amd64 mode
- For this work on MacOS we need to install the rosetta
    - `softwareupdate --install-rosetta --agree-to-license`
    -  https://www.kenmuse.com/blog/forcing-dev-container-to-use-amd64/
- We have the docker in docker extension installed, so we can run docker commands inside of our container
- Our github credentials are shared inside of the devcontainer so we can edit/commit directly from there
- On Mac , Docker has a default memory limit of 2GB and a small Disk, increase it to 16GB of memory and 60GB of disk if you can

## OpenAI and Anthropic
- We'll use OpenAI and for using that , you need an API-key - <https://platform.openai.com/api-keys>
- We'll optionally use Anthropic , you need an API-key for that too  - <https://console.anthropic.com/settings/keys>

## Credentials
- Credentials can be configured in the `.env` file . Copy over the `.env_sample` and fill in the right credentials
- Use `OPENAI_API_KEY` and `ANTHROPIC_API_KEY` as keys

- In vscode: By default, the Python extension looks for and loads a file named .env in the current workspace folder, then applies those definitions. The file is identified by the default entry "python.envFile": "${workspaceFolder}/.env" in your user settings (see General Python settings). You can change the python.envFile setting at any time to use a different definitions file. <https://code.visualstudio.com/docs/python/environments>

- To configure the credentials in codespaces , go to the settings of this repo and configure the secrets there
    - Repo -> Settings -> Security -> Secrets and Variables -> Codespaces -> 
    - <https://docs.github.com/en/codespaces/managing-codespaces-for-your-organization/managing-development-environment-secrets-for-your-repository-or-organization#adding-secrets-for-a-repository>

## Github and Github Codespaces
- To run Github codespaces, you need a github account
- You should get 60 hours of running a container for free each month
- Make sure to register this ahead of the course as the first day it has some limits applied

- Make sure to stop/delete your codespace if you're not using it
    - Page to manage your codespaces <https://github.com/codespaces>
- To run the codespaces :
    - [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/jedi4ever/genai-devops-workshop)