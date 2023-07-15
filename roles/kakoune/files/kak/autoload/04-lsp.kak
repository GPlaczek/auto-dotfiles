lsp-enable
lsp-auto-hover-enable
lsp-diagnostics

set-option global lsp_show_hover_format 'printf %s "${lsp_diagnostics}"'

# Use tab to select completion
hook global InsertCompletionShow .* %{
  map window insert <tab> <c-n>
  map window insert <s-tab> <c-p>
}

hook global InsertCompletionHide .* %{
  unmap window insert <tab> <c-n>
  unmap window insert <s-tab> <c-p>
}

hook buffer WinSetOption filetype=(c|cpp|h|hpp|cc|hh) %{
    ctags-enable-autoinfo
}
