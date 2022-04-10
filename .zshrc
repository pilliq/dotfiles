alias ls="ls -G"

# nvm related setup
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# zsh git prompt
# https://salferrarello.com/zsh-git-status-prompt/
# Load version control information
autoload -Uz add-zsh-hook vcs_info
add-zsh-hook precmd vcs_info

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats '(%b%u%c) '
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c) '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%n@%m ${PWD/~/~} ${vcs_info_msg_0_}$ '
PROMPT='%n@%m %1d ${vcs_info_msg_0_}$ '
