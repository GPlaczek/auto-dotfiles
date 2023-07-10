if [ "$TMUX" ]; then
    NAME=$(tmux display-message -p '#S')
    if kak -l | grep -qe "^$NAME$" ; then
        kak -c "$NAME" "$1"
    else
        kak -s "$NAME" "$1"
    fi
else
    kak "$1"
fi
