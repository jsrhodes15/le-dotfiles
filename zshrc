# Path to your oh-my-zsh installation.
export ZSH=/home/$USER/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Enable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as 'dirty' in git
DISABLE_UNTRACKED_FILES_DIRTY="true"


#Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
  docker
#  kubectl
)

source $ZSH/oh-my-zsh.sh


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set SSH Key Path
# export SSH_KEY_PATH="~/.ssh/dsh_id"

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
source ~/.zsh_aliases
#source ~/.zsh_secrets
#source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# extend history size
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

#export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
# Exzeo stuff
#export DOCKER_REGISTRY=registry.exzeo.io/docker
# Howchoo stuff
#export HOWCHOO_DIR=/Users/jordanrhodes/Developer/howchoo/Howchoo-django  # Added by howchoo
#PATH=$PATH:$HOWCHOO_DIR/bin/commands  # Added by howchoo


#eval "$(starship init zsh)"
