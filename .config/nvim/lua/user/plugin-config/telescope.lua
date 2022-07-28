-- NOTE: install ripgrep for live_grep picker

-- ====for live_grep raw====:
-- for rp usage: reference: https://segmentfault.com/a/1190000016170184
-- -i ignore case
-- -s 大小写敏感
-- -w match word
-- -e 正则表达式匹配
-- -v 反转匹配
-- -g 通配符文件或文件夹，可以用!来取反
-- -F fixed-string 原意字符串，类似python的 r'xxx'

local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 telescope")
  return
end

telescope.setup({
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    -- 窗口内快捷键
    mappings = require("user.keybindings").telescopeList,
  },
  pickers = {
    -- 内置 pickers 配置
    find_files = {
      -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
      -- theme = "dropdown",
      find_command = { "fd", "-H", "-I" }, -- "-H" search hidden files, "-I" do not respect to gitignore
    }
  },
  extensions = {
    -- 扩展插件配置
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    },

    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },

    live_grep_raw = {
      auto_quoting = false, -- enable/disable auto-quoting
    },
  },
})

-- telescope extensions
telescope.load_extension("env")
telescope.load_extension("ui-select")
telescope.load_extension('fzf')
telescope.load_extension("live_grep_args")
telescope.load_extension('dap')
telescope.load_extension("projects")