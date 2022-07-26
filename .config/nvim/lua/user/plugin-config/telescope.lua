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
    vim.notify("telescope not found!")
    return
end

telescope.setup({
    defaults = {
        initial_mode = "insert",
        mappings = require("user.keybindings").telescopeList,
        file_ignore_patterns = { -- % is an escape char in lua regex
            '__pycache__/',
            'Pictures/',
            'Drives/',
            '.git/',
            'lua%-language%-server/',
        },
    },
    pickers = {
        find_files = {
            -- theme = "dropdown",
            find_command = { "fd", "-H", "-I" }, -- "-H" search hidden files, "-I" do not respect to gitignore
            hidden = true,
        },
        live_grep = {
            additional_args = function() return { '--hidden' } end,
        },
    },
    extensions = {
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

        live_grep_args = {
            auto_quoting = false, -- enable/disable auto-quoting
            -- vimgrep_arguments = { "rg", "--hidden" }, NOTE: new version will solve this problem: config show hide files
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
