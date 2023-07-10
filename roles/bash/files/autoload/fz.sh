fz() {
    file=$(fzf)
    [ -n "$file" ] && history -s "$EDITOR $file" && "$EDITOR" "$file"
}
