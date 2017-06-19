
# Check for an interactive session
#[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\[\033[31;5m\]\$ \[\033[m\]'

alias cp="cp -Rv"
alias rm="rm -rfv"
alias df="df -h"
alias du="du -h -s"
alias mc="mc -S gotar"
alias be="bundle exec"
alias rdesktop="rdesktop -g 97%"
alias rvmstart="source /home/cross/.rvm/scripts/rvm"

source ~/.git-completion.bash
source /home/cross/.rvm/scripts/rvm
#source /usr/share/nvm/init-nvm.sh

if ! pgrep -u $USER ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval $(<~/.ssh-agent-thing)
fi
ssh-add -l >/dev/null || alias ssh='ssh-add -l >/dev/null || ssh-add && unalias ssh; ssh'

export TERM=xterm-256color
export PATH=$PATH:/usr/local/bin:/usr/local/lib:~/bin/

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
