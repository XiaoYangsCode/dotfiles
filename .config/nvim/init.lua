-- 基础设置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
require("plugin-config.gitsigns")
require("plugin-config.symbols-outline")
require("plugin-config.comment")
require("plugin-config.todo-comments")
require("plugin-config.autopairs")
require("plugin-config.indent-blankline")
require("plugin-config.autocommand")
require("plugin-config.hop")
require("plugin-config.toggleterm")
-- 内置LSP
require("lsp")
