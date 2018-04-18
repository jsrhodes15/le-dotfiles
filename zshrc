# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="spaceship"

# Enable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as 'dirty' in git
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# plugins=(git)

source $ZSH/oh-my-zsh.sh

##### User configuration #####

# This loads NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# This loads RBENV
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set SSH Key Path
# export SSH_KEY_PATH="~/.ssh/dsh_id"

# -------------------------------------------------------------------------------------
# Aliases
# -------------------------------------------------------------------------------------

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias ls="ls -Gla"

# Docker
# Sbow all aliases related to Docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
# Stop all containers
dstop() { docker rm $(docker ps -aq); }
# Remove all containers
drmi() { docker rmi $(docker images -q); }
# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

