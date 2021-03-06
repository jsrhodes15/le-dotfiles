# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="spaceship"

# ------------------------------------------------------------------------------
# Spaceship Customization
# ------------------------------------------------------------------------------
#SPACESHIP_PROMPT_ORDER=(
#  user          # Username section
#  dir           # Current directory section
#  host          # Hostname section
#  git           # Git section (git_branch + git_status)
#  package       # Package version
#  node          # Node.js section
#  ruby          # Ruby section
#  golang        # Go section
#  dotnet        # .NET section
#  docker        # Docker section
#  kubecontext   # Kubectl context section
#  exec_time     # Execution time
#  line_sep      # Line break
#  battery       # Battery level and status
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)

#SPACESHIP_BATTERY_THRESHOLD=20

#SPACESHIP_DIR_TRUNC_REPO=false
# ------------------------------------------------------------------------------

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
  kubectl
)

source $ZSH/oh-my-zsh.sh

##### User configuration #####
# Untracked file for storing creds - this will need to be manually created
# source ~/.zsh_secrets
# Stuff for Go
export GOPATH=$HOME/Developer/go
export PATH=$PATH:$GOPATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

# fnm - node version manager
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --multi`"

# gcloud - google cloud CLI
export PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH
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

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
source ~/.zsh_aliases
source ~/.zsh_secrets
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# extend history size
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

export PATH="/usr/local/opt/mongodb-community@3.6/bin:$PATH"
# Exzeo stuff
export DOCKER_REGISTRY=registry.exzeo.io/docker
# Howchoo stuff
export HOWCHOO_DIR=/Users/jordanrhodes/Developer/howchoo/Howchoo-django  # Added by howchoo
PATH=$PATH:$HOWCHOO_DIR/bin/commands  # Added by howchoo


eval "$(starship init zsh)"
