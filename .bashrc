SCRIPTS_HOME=~/scripts
TERM=xterm-256color
export EDITOR=vim
#export HOMEBREW_GITHUB_API_TOKEN=
export DEVPATH=$HOME/dev
export SOURCEPATH=$HOME/sources
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export ANT_HOME=$SOURCEPATH/apache-ant-1.8.2
export GOPATH=$DEVPATH/go
export WORKON_HOME=~/.envs
export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/pear/bin:/usr/local/share/npm/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin # for GOROOT
export PATH=$PATH:$GOPATH/bin
export PATH=$ANT_HOME/bin:$PATH
export PATH=$SCRIPTS_HOME:$PATH

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
#alias mongod_dev='/Users/pquiza/dev/mongo/build/darwin/normal/mongo/mongod --dbpath /data/db/ --kj
#starting mysql: mysql.server start

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
