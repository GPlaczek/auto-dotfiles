map global user y '<a-|>xclip -i -selection clipboard<ret>' -docstring 'copy selection to xclip'
map global user x ':lsp-find-error<ret>' -docstring 'next error'
map global user d ':git show-diff<ret>' -docstring 'show git diff'
map global user c ':comment-line<ret>' -docstring 'comment line'
map global user <a-d> ':git hide-diff<ret>' -docstring 'hide git diff'
map global user b ':git blame<ret>' -docstring 'show git blame'
map global user <a-b> ':git hide-blame<ret>' -docstring 'hide git blame'
map global user r ':git_blame_show<ret>' -docstring 'show last commit that changed this line'
map global user s ':git show <a-|>git blame -L%val{cursor_line},%val{cursor_line} | cut -d" " -f1<ret>' -docstring 'show git commit'
