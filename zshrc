# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Autocomplete for Homebrew commands
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Set name of the theme to load.
ZSH_THEME="spaceship"

# ------------------------------------------------------------------------------
# Spaceship Customization
# ------------------------------------------------------------------------------
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  golang        # Go section
  dotnet        # .NET section
  docker        # Docker section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_BATTERY_THRESHOLD=20

#SPACESHIP_DIR_TRUNC_REPO=false
# ------------------------------------------------------------------------------

# Enable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as 'dirty' in git
DISABLE_UNTRACKED_FILES_DIRTY="true"


#Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(docker, docker-compose)

source $ZSH/oh-my-zsh.sh

##### User configuration #####

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'npx' 'yarn' 'eslint' 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

# Stuff for Go
export GOPATH=$HOME/Developer/go
export PATH=$PATH:$GOPATH/bin

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

# extend history size
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
