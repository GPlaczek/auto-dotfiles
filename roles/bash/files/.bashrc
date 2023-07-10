export XDG_CONFIG_HOME="$HOME/.config"
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin"
export EDITOR=kk

set -o vi

for script in "$XDG_CONFIG_HOME/bash/autoload/"*; do
    source "$script"
done

for script in "$XDG_CONFIG_HOME/bash/secrets/"*; do
    source "$script"
done
