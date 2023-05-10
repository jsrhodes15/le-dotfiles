# ------------------------------------------------------------------------------
##### OH MY ZSH config #####
# ------------------------------------------------------------------------------
# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh
# Enable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"
# Disable marking untracked files as 'dirty' in git
#DISABLE_UNTRACKED_FILES_DIRTY="true"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  docker
)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
##### User configuration #####
# ------------------------------------------------------------------------------
# Add homebrew-installed tool's man pages to path
export MANPATH="/opt/homebrew/man:$MANPATH"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# SSH Key Path
#export SSH_KEY_PATH="~/.ssh/dsh_id"

# STARSHIP theme
eval "$(starship init zsh)"


# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
source ~/.zsh_aliases

# ------------------------------------------------------------------------------
# Secrets, tokens, etc
# ------------------------------------------------------------------------------
if [ -f ~/.zsh_secrets ]; then
# Untracked file for storing creds - this will need to be manually created
source ~/.zsh_secrets
fi

# Extend history size
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# ------------------------------------------------------------------------------
# GO
# ------------------------------------------------------------------------------
export GOPATH=$HOME/Developer/go
export PATH=$GOPATH/bin:$PATH

# ------------------------------------------------------------------------------
# RUST
# ------------------------------------------------------------------------------
export PATH=$HOME/.cargo/bin:$PATH

# ------------------------------------------------------------------------------
# FNM - node version manager
# ------------------------------------------------------------------------------
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --use-on-cd --version-file-strategy=recursive`"

# ------------------------------------------------------------------------------
# MongoDB (to be able to use the shell)
# ------------------------------------------------------------------------------
#export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"

# ------------------------------------------------------------------------------
# Exzeo stuff
# ------------------------------------------------------------------------------
export DOCKER_REGISTRY=registry.exzeo.io/docker

# ------------------------------------------------------------------------------
# Serverless framework
# ------------------------------------------------------------------------------
export PATH="$HOME/.serverless/bin:$PATH"

# ------------------------------------------------------------------------------
# Ruby Version Manager - frum
# ------------------------------------------------------------------------------
eval "$(frum init)"

# ------------------------------------------------------------------------------
# Python Version Manager
# ------------------------------------------------------------------------------
#eval "$(pyenv init -)"

# ------------------------------------------------------------------------------
# GCLOUD - google cloud CLI
# ------------------------------------------------------------------------------
#export PATH=/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH

