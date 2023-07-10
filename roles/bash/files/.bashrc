export XDG_CONFIG_HOME="$HOME/.config"

export EDITOR=kak

set -o vi

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin"

for script in "$XDG_CONFIG_HOME/bash/autoload/"*; do
    source "$script"
done

for script in "$XDG_CONFIG_HOME/bash/secrets/"*; do
    source "$script"
done
