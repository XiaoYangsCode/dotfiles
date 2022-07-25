vim.cmd [[
  augroup _general_settings
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=400}
  augroup END

  augroup minimap_refersh
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> :MinimapRefresh<CR>
  augroup END
]]

-- autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
