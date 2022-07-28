-- 基础设置
require("user.basic")
-- 快捷键映射
require("user.keybindings")
-- Packer 插件管理
require("user.plugins")
-- 主题设置
require("user.colorscheme")
-- 插件配置
require("user.plugin-config.nvim-tree")
require("user.plugin-config.bufferline")
require("user.plugin-config.lualine")
require("user.plugin-config.telescope")
require("user.plugin-config.dashboard")
require("user.plugin-config.project")
require("user.plugin-config.nvim-treesitter")
require("user.plugin-config.gitsigns")
require("user.plugin-config.symbols-outline")
require("user.plugin-config.comment")
require("user.plugin-config.todo-comments")
require("user.plugin-config.autopairs")
require("user.plugin-config.indent-blankline")
require("user.plugin-config.autocommand")
require("user.plugin-config.hop")
require("user.plugin-config.toggleterm")
require("user.plugin-config.nvim-lightbulb")
require("user.plugin-config.vim-markdown")
-- require("user.plugin-config.tabout")
-- 内置LSP
require("user.lsp")
-- DAP
require("user.dap")
