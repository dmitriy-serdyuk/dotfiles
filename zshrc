# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ddst"
# kphoen
#tjkirch
# dst

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

#export PATH="/usr/local/heroku/bin:/home/dima/.rvm/gems/ruby-1.9.3-p327/bin:/home/dima/.rvm/gems/ruby-1.9.3-p327@global/bin:/home/dima/.rvm/rubies/ruby-1.9.3-p327/bin:/home/dima/.rvm/bin:/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/dima/.rvm/bin:/home/dima/workspace/reactive/sbt/bin:/home/dima/.rvm/bin:/home/dima/workspace/reactive/sbt/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/workspace/reactive/sbt/bin
JAVA_HOME=/
#export PROMPT='%n@%m:%c$ '
#export LANG=en_US
#export RPROMPT='[%~]'
alias ls='ls --color=auto'
alias time='/usr/bin/time -p'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias notebook='ipython notebook --no-browser'

export PYCHARM_JDK=/usr/lib/jvm/java-1.7.0-openjdk-amd64/
export BROWSER=firefox

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

bindkey '^R' history-incremental-search-backward
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word

#setopt menucomplete
#zstyle ':completion:*' menu select=1 _complete _ignored _approximate

#autoload -U compinit
#compinit
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#setopt autocd


extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1   ;;
      *.tar.gz)  tar xvzf $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xvf $1    ;;
      *.tbz2)    tar xvjf $1   ;;
      *.tgz)     tar xvzf $1   ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#bindkey -v
#setopt hist_ignore_all_dups

alias -g L='| less'
alias -g G='| grep'
alias -g GI='|grep -i'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g SU='|sort -u'
alias tmux="TERM=screen-256color-bce tmux"

hash -d svd=~/workspace/svd
hash -d matchbox=~/Downloads/graphlabapi/apps/gmatchbox/
hash -d matchboxdebug=~/Downloads/graphlabapi/debug/apps/gmatchbox/

export PYLEARN2_DATA_PATH=/home/dima/datasets/
export PATH=$PATH:/home/dima/Downloads/pycharm-community-4.0.3//bin/
if [ "$TERM" = "xterm" ]; then
    export TERM=konsole-256color
fi 
# added by Anaconda 2.1.0 installer
#export PATH="/opt/anaconda/anaconda/bin:$PATH"
export PYTHONPATH=~/workspace/blocks/:~/workspace/picklable_itertools/:~/workspace/fuel:$PYTHONPATH
export PATH="/data/miniconda/bin:$PATH"
