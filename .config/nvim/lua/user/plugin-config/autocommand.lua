vim.cmd [[
  augroup _general_settings
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=400}
  augroup END

  augroup minimap_refersh
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> :MinimapRefresh
  augroup END

  augroup _load_break_points
    autocmd!
    autocmd FileType c,cpp,python,lua :lua require('user.dap.dap-util').load_breakpoints()
  augroup end

  augroup _fold_bug_solution  " https://github.com/nvim-telescope/telescope.nvim/issues/559
    autocmd!
    autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
  augroup end
]]

-- autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
