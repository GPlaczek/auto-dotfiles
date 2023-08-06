if [ "$TMUX" ]; then
    NAME=$(tmux display-message -p '#S')
    if kak -l | grep -qe "^$NAME$" ; then
        kak -c "$NAME" $@
    else
        kak -s "$NAME" $@
    fi
else
    kak $@
fi
