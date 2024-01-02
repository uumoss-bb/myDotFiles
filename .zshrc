# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Brodie.Balser/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# FILES
alias openzsh="code ~/.zshrc"

alias wiz="~/Documents/WizWork"
alias wizwork="~/Documents/WizWork"
alias wizWork="~/Documents/WizWork"
alias WizWork="~/Documents/WizWork"

alias tm="~/Documents/TM"
# alias dmnd="~/Documents/wizWork/TM/demand_capture/workers && code ."
# alias camp="~/Documents/wizWork/TM/campaign-pipelines/workers && code ."
# alias coins="~/Documents/wizWork/coins_that_stack && code ."

# NPM
alias nr="npm run"

# YARN
alias yr="yarn run"

# NPX
alias xr="npx run"


# GITHUB
alias gcd="git checkout develop"
alias gcs="git checkout staging"
alias gcm="git checkout master"
alias gpd="git pull origin develop"
alias gps="git pull origin staging"
alias gpm="git pull origin master"
alias gdis="git reset --hard HEAD"


# AUTOMATGIT ================================================================
ag(){
  git add -A;
    if [[ -z "$*"  ]]; then
      git commit -m "Brodie is commiting something on git";
    else
      git commit -m "$*";
    fi
      git push;
}
# ------------------ END AUTOMATGIT --------------------------

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# TICKET MASTER STUFF ================================================================

export TF_VERSION=1.2.8

terraformerPrep() {
    docker pull tmhub.io/ticketmaster/terraformer:${TF_VERSION}   
}

terraformer() {
    docker run --rm -it -v $(pwd):/cfg -v ~/.aws:/.aws tmhub.io/ticketmaster/terraformer:${TF_VERSION} "$@";
}

deployWorker() {
  npx run workers:bundle
  mv ./dist/lambda.zip ./terraform
  cd ./terraform
  terraformer "$@"
  cd ../
  mv ./terraform/lambda.zip ./dist
}

alias e="export AWS_PROFILE=tm-nonprod-Ops-Techops"
alias eprod="export AWS_PROFILE=tm-prod-ReadOnly-Techops"

# END OF TICKET MASTER STUFF ================================================================
export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
export PATH="/opt/homebrew/opt/node@12/bin:$PATH"
