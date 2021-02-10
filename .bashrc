SCRIPTS_HOME=~/scripts
TERM=xterm-256color
# Log all bash history - https://spin.atomicobject.com/2016/05/28/log-bash-history/
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

export EDITOR=vim
export HOMEBREW_GITHUB_API_TOKEN=ccd405f305d018570f6814ff5a6a1d86d6c5b082
export DEVPATH=$HOME/dev
export SOURCEPATH=$HOME/sources
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export ANT_HOME=$SOURCEPATH/usr/local/Cellar/ant/1.9.6
export GOPATH=$DEVPATH/go
export WORKON_HOME=~/.envs
export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/pear/bin:/usr/local/share/npm/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin # for GOROOT
export PATH=$PATH:$GOPATH/bin
export PATH=$ANT_HOME/bin:$PATH
export PATH=$SCRIPTS_HOME:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH" # override macOS' sqlite3
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH" # override default postgresql
export PATH="/Library/TeX/texbin:$PATH" # add tex binaries
export DROPBOX=$HOME/Dropbox

# https://sanctum.geek.nz/arabesque/better-bash-history/
# save last command immediately to history instead of waiting
PROMPT_COMMAND='history -a'
# include timestamp in bash history
HISTTIMEFORMAT='%F %T '

# for buku data directory ($XDG_DATA_HOME/buku/bookmarks.db)
export XDG_DATA_HOME=$DROPBOX

# __git_ps1 needs to be installed
# this helped http://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
export PS1='\u@\h:\W$(__git_ps1 "(%s)")\$ ' # make sure to use single quotes so that it's interpretted every time you change directories/branches

ssh_agent="$HOME/.ssh-agent.sh"
if [ -f $ssh_agent ]
then
	  source $ssh_agent > /dev/null
fi

if [ -f ~/.bash_aliases ]; 
then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_local ];
then
    . ~/.bash_local
fi

if [ -f /usr/local/bin/virtualenvwrapper.sh ];
then
    . /usr/local/bin/virtualenvwrapper.sh
fi

alias ls='ls -G'
alias calc='~/.scripts/calchw.sh'
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias mongony='cd ~/Dropbox/hackNY/2012/mongo'
alias hackny="cd ~/Dropbox/hackNY/$(date | awk '{print $6}')"
alias places="vim ~/Dropbox/hackNY/2012/places"
alias playground='cd ~/Dropbox/playground'
alias 428='source ~/.scripts/428.sh'
alias hadoop_env='source ~/.scripts/hadoop.sh'
alias hive_env='source ~/.scripts/hive.sh'
alias ideas='vim ~/Dropbox/Projects/Ideas.txt'
alias tanzania='cd ~/Dropbox/tanzania'
alias datafart='curl --data-binary @- datafart.com'
alias balance='vim ~/Dropbox/finance/balance/balance.book'
alias fitness='vim ~/Dropbox/fitness/notes'
alias cr='python ~/dev/scratch/tools/upload.py -y --email phillip.quiza@10gen.com -s codereview.10gen.com -m'
alias balance='python ~/Dropbox/finance/balance/balance/cli.py -b ~/Dropbox/finance/balance/balance.book $@'
alias log='vim + ~/Dropbox/hackny/2012/log'
alias todo='vim ~/Dropbox/todo'
alias plan='vim ~/Dropbox/plan'
alias play='~/Dropbox/scripts/play/play.sh'
alias vif='/mms/scripts/vif'
alias pg-start='pg_ctl -D /usr/local/var/postgres start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop'
dev() {
    cd "$HOME/dev/$1"
}
_dev_complete()
{
    PROJECTS=$(ls $HOME/dev)
    local cur=${COMP_WORDS[COMP_CWORD]}

    COMPREPLY=( $(compgen -W "${PROJECTS}" -- $cur) )
}
complete -F _dev_complete dev

#alias mongod_dev='/Users/pquiza/dev/mongo/build/darwin/normal/mongo/mongod --dbpath /data/db/ --kj
#starting mysql: mysql.server start

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/Users/pquiza/.local/bin/luna-studio:$PATH

# SOCKS Proxy for commands
# if socks port is not enabled and this env var is set, network commands don't work
#export http_proxy=socks5://127.0.0.1:9090
#export https_proxy=socks5://127.0.0.1:9090

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
