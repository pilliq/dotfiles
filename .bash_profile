export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi
