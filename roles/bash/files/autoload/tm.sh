_tma() {
    TMUX_SESSIONS=$(tmux ls -F '#S' | xargs)

    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$TMUX_SESSIONS" -- $cur) )
}
complete -F _tma tm

tm() {

    TMUX_SESSIONS=$(tmux ls -F '#S' | xargs)

    if [ -z "$1" ]; then
        NAME=$(basename "$(pwd)")
    else
        NAME=$1
    fi

    if [[ $TMUX_SESSIONS =~ $NAME ]]; then
        tmux attach -t "$NAME"
    else
        tmux new -s "$NAME"
    fi
}
