-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- move cursor
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- related line number
vim.wo.number = true
vim.wo.relativenumber = true
-- highlight cursorline
vim.wo.cursorline = true
-- show left sigh
vim.wo.signcolumn = "yes"
-- right refer line
vim.wo.colorcolumn = "80"
-- indent
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
-- >> <<
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- space replace tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- indent curline
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- search not care case
vim.o.ignorecase = true
vim.o.smartcase = true
-- search highlight
-- vim.o.hlsearch = false
-- search as input
vim.o.incsearch = true
-- cmd hight
vim.o.cmdheight = 2
-- auto load when file is change by others
vim.o.autoread = true
vim.bo.autoread = true
-- wrap line
vim.wo.wrap = false
-- <Left><Right> can jump to next line when cursor at head or tail
vim.o.whichwrap = '<,>,[,]'
-- allow to hide changed buffer
vim.o.hidden = true
-- mouse support
vim.o.mouse = "a"
-- forbid create backup file
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- the interval for keyboard continues click
vim.o.timeoutlen = 500
-- split window
vim.o.splitbelow = true
vim.o.splitright = true
-- cmp not auto select
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- style
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
--
vim.o.list = true
vim.o.listchars = "space:·"
-- cmp enhance
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
-- cmp line number < 10
vim.o.pumheight = 10
-- show tabline forever
vim.o.showtabline = 2
-- do not show mode
vim.o.showmode = false
