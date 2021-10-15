#
#	                ██
#	               ░██
#	 ██████  ██████░██      ██████  █████
#	░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#	   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#	  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#	 ██████ ██████ ░██  ░██░███   ░░█████
#	░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░ 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# place this after nvm initialization!
# Autoruns nvm use when .nvmrc available after `cd`
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use 
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

autoload -U promptinit; promptinit
prompt pure

export ZSH=${HOME}/.oh-my-zsh #Path to your oh-my-zsh installation.  

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Use normal date formatting
HIST_STAMPS="dd/mm/yyyy"

# Plugins
plugins=(
  git
  brew
  git
  z
  zsh-autosuggestions
  adb
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias gs="git status"
alias gc="git commit"
alias gd="git diff"
alias gl="git log"
alias gan="git add"
alias ga="git add -p"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gb="git branch"
alias gr="git reset"
alias gpl="git pull"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias api25="${HOME}/Library/Android/sdk/tools/emulator -avd Nexus_6P_API_25"
alias rna="react-native run-android"
alias rni="react-native run-ios"
alias rnix="react-native run-ios --simulator=\"iPhone X\""
alias uiautomator="$ANDROID_HOME/tools/bin/uiautomatorviewer"
alias vw="cd ~/Google\ Drive/vimwiki"
alias vim="nvim" # Vim points to macvim version
alias v="nvim"
alias srcz="source ~/.zshrc"
alias e="emus"
alias g="lazygit"

# Exports
export ENVIRONMENT="dan-local"
export IP_ADDRESS="10.100.11.32"
export USER=${USER}
export AGENDA_URL="http://localhost"
export GIT_EDITOR='nvim'
export REACT_EDITOR='nvim'
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export JAVA_HOME=`/usr/libexec/java_home -v 11.0.12`

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH=${PATH}:${HOME}/Library/Android:${HOME}/Library/Android/sdk/platform-tools
export PATH=${PATH}:${HOME}/Library/Android/sdk/tools
export PATH="${PATH}:${JAVA_HOME}/bin"
# CUSTOM From https://webdevstudios.com/2015/02/10/a-beginners-guide-to-the-best-command-line-tools/
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *', 'fg=white,bold,bg=red')

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://github.com/junegunn/fzf.vim/issues/469
# FZF.Vim ignore node_modules
export FZF_DEFAULT_COMMAND='ag --nocolor --ignore node_modules -g ""'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
