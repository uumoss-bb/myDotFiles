# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/brodiebalser/.oh-my-zsh"

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

# FILES
alias openzsh="code ~/.zshrc"
alias londelo="~/Documents/londelo"
alias viv="~/Documents/londelo/VIVED"
alias startweb="code ~/Documents/londelo/VIVED/vived_science_webgl/ScienceWebGL_TS && ~/Documents/londelo/VIVED/vived_science_webgl/ScienceWebGL_TS &&  export SASS_PATH=./node_modules"
alias startweb2="code ~/Documents/londelo/VIVED/vived_player_2 && ~/Documents/londelo/VIVED/vived_player_2"
alias startvivapi="code ~/Documents/londelo/VIVED/vived-api && ~/Documents/londelo/VIVED/vived-api && export AWS_REGION=us-east-1"
alias startcolfro="code ~/Documents/londelo/VIVED/collection-publishing && ~/Documents/londelo/VIVED/collection-publishing"
alias startouzel="code ~/Documents/londelo/VIVED/ouzel_frontend && ~/Documents/londelo/VIVED/ouzel_frontend"
alias startpublisher="code ~/Documents/londelo/VIVED/app_publisher && ~/Documents/londelo/VIVED/app_publisher"

alias gitVivSetUp='git config user.name "Brodie Balser" && git config user.email brodie.balser@vivedlearning.com'

# NPM
alias nr="npm run"

# GITHUB
alias gcd="git checkout develop"
alias gcs="git checkout staging"
alias gcm="git checkout master"
alias gpd="git pull origin develop"
alias gps="git pull origin staging"
alias gpm="git pull origin master"

# AUTOMATGIT ================================================================
# --------------------------
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
