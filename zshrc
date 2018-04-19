# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

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
  golang        # Go section
  rust          # Rust section
  haskell       # Haskell Stack section
  docker        # Docker section
  aws           # Amazon Web Services section
  pyenv         # Pyenv section
  dotnet        # .NET section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_BATTERY_THRESHOLD=20
# ------------------------------------------------------------------------------

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

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -w __init_nvm)" = function ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'eslint', 'webpack')
  function __init_nvm() {
    for i in "${__node_commands[@]}"; do unalias $i; done
    . "$NVM_DIR"/nvm.sh
    unset __node_commands
    unset -f __init_nvm
  }
  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi

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

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'
alias ls="ls -Gla"

# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Update OSx software, brew, npm and packages
alias update='echo "update osx: "; sudo softwareupdate -i -a; echo "update homebrew: "; brew update; echo "upgrade brew stuff: "; brew upgrade; echo "cleanup homebrew: "; brew cleanup; echo "update npm: ";  npm update npm -g; echo "update global npm modules: "; npm update -g'
# Empty the Trash & clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'
# Copy my public SSH key to clipboard
alias cpk='cat ~/.ssh/id_rsa.pub | pbcopy; echo "Public key copied to clipboard"'
# Create UUID's
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"

# Docker
# Sbow all aliases related to Docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Images
alias di='docker images'
alias drmi='docker rmi'
alias drmiall='docker rmi $* $(docker images -a -q)'
alias drmi_d='docker rmi $* $(docker images -q -f "dangling=true")'

# Containters
alias dps='docker ps'
alias dpsa='docker ps -a'
alias drm='docker rm'
alias dkillall='docker rm $* $(docker ps -a -q)'
alias dstop='docker stop $* $(docker ps -q -f "status=running")'
# Volumes
alias dvls='docker volume ls $*'

