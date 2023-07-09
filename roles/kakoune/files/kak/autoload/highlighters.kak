# line wrapping
add-highlighter global/ wrap

# relative line numbers
add-highlighter global/ number-lines -relative

# highlight matching brackets
add-highlighter global/ show-matching
set-face global MatchingChar black,red+b

# Syntax highlighting
face global value red+i
face global type yellow+b
face global variable yellow
face global module cyan+b
face global function cyan
face global string green
face global keyword magenta+b
face global operator yellow
face global attribute green
face global comment blue+i
face global documentation comment
face global meta magenta
face global builtin default
