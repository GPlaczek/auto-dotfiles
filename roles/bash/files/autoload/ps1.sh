source /usr/share/git/completion/git-prompt.sh

PS1_VENV='[\[\e[3;36m\]$(basename $VIRTUAL_ENV)\[\e[0m\]]'
PS1_SEPARATOR='\[\e[1;3;33m\]::\[\e[0m\]'
PS1_STATUS='{\[\e[$([ "$errno" = 0 ] && echo "0;32" || echo "3;31")m\]${errno}\[\e[0m\]}'
PS1_WORKDIR='<\[\e[1;31m\]\W\[\e[0m\]>'
PS1_HOSTNAME='(\[\e[1;34m\]@\h\[\e[0m\])'

export VIRTUAL_ENV_DISABLE_PROMPT=1
PROMPT_COMMAND=__prompt_command

__prompt_command() {
    export errno=$?
    export GIT_PS1_SHOWCOLORHINTS=1
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    export GIT_PS1_SHOWSTASHSTATE=1

    export PS1_GIT="$(__git_ps1 '\\[\\e[1;3;33m\\]::\\[\\e[0m\\](%s)')"
    export PS1="${PS1_STATUS}${PS1_SEPARATOR}${PS1_HOSTNAME}${PS1_SEPARATOR}$([ $VIRTUAL_ENV ] && echo ${PS1_VENV}${PS1_SEPARATOR})${PS1_WORKDIR}${PS1_GIT}$ "
}
