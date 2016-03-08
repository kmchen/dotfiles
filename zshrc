# Path to your oh-my-zsh installation.
export ZSH=/home/kmchen/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="kennethreitz"

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

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# fasd
# eval "$(fasd --init auto)"
eval "$(fasd --init posix-alias zsh-hook)"
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias j='fasd_cd -d'     # cd, same functionality as j in autojump
alias jj='fasd_cd -d -i' # cd with interactive selection

# Useful alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -ltr'
alias grep='grep --color -n'
alias untar='tar xzf'
alias mktar='tar -cvzf'         # mktar destination.tar.gz file1 file2
alias gst='git status --u=no'   # git status hide untracked files
alias dk='sudo docker'         
alias dkr='sudo docker run'     
alias dkrm='sudo docker rm'     
alias dkimg='sudo docker images'     
alias dkps='sudo docker ps -a'     
alias kill='kill -9'            
alias gps='ps faux | grep'            

# Gcloud alias
alias gconf='gcloud config'     # Gcloud config
alias gcomp='gcloud compute'    # Gcloud compute
alias glist='gcloud compute instances list'    # Gcloud compute list instances
alias gprod='gconf set project studio-csi-prod' # Gcloud set project to prod
alias gdev='gconf set project studio-csi-dev' # Gcloud set project to dev
alias ghealthdev='gconf set project studio-health-dev' # Gcloud set project to dev
alias gssh='gcomp ssh csiuser@' # Gcloud ssh csiuser@instance-name
# ssh
# gcloud compute --project "studio-csi-dev" ssh --zone "us-central1-f" "ccloud-us-central1-f-the-walker-3v65"
# gcomp ssh csiuser@ccloud-prod-csi-us-central1-f-zookeeper-0cc9

# Go alias
alias gob='go build'
alias got='go test -v'
alias gor='go run'
alias gotweb='go test -coverprofile=/tmp/coverage.out && go tool cover -html=/tmp/coverage.out'

# Bind ctrl-h, ctrl-l to backword-word and forward-word respectively in zsh
bindkey '^h' backward-word
bindkey '^l' forward-word

# Shell export
export PKGHOME=/home/kmchen/package
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_51
export JAVA_BIN=$JAVA_HOME/bin

# Golang export
export GOHOME=/home/kmchen/Desktop/golang
export GOVER=go1.5.3
export GOROOT=$GOHOME/$GOVER
export GOBIN=$GOROOT/bin
export GOPATH=$GOHOME/project

# Nodejs export
export NODE_PATH=$PKGHOME/node-v0.12.7
export NODE_PATH=$PKGHOME/node-v5.6.0-linux-x64

# ZK export
export ZK_HOME=$PKGHOME/zookeeper-3.4.6
export ZK_BIN=$ZK_HOME/bin

# Redis export
export REDISHOME=$PKGHOME/redis-stable
export REDISBIN=$REDISHOME/src

# Hbase export
export HBASE_HOME=$PKGHOME/hbase-0.98.8-hadoop2
export HBASE_BIN=$HBASE_HOME/bin

# Source env.sh in $CSIPATH
export CSIPATH=$GOPATH/src/htc.com/csi
source $CSIPATH/env.sh

# ETCD export
export ETCD_BIN=$PKGHOME/etcd2.1.1

export PATH=$PATH:$GOPATH:$GOROOT:$GOBIN:$ZK_BIN:$REDISBIN:$JAVA_HOME:$HBASE_HOME:$HBASE_BIN:$JAVA_BIN:$NODE_PATH:$ETCD_BIN

# The next line updates PATH for the Google Cloud SDK.
source $PKGHOME/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source $PKGHOME/google-cloud-sdk/completion.zsh.inc

export NVM_DIR="/home/kmchen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
