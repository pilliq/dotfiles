TERM=xterm-256color
export EDITOR=vim
export PATH=/usr/local/bin:$PATH:/usr/local/sbin:/usr/local/pear/bin

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

alias ls='ls -G'
alias calc='~/.scripts/calchw.sh'
alias updatedb="sudo /usr/libexec/locate.updatedb"
