local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("can not find nvim-treesitter")
    return
end

treesitter.setup({
    -- install language parser
    -- :TSInstallInfo to show language installed
    ensure_installed = { "json", "yaml", "python", "lua", "c", "cpp", "cmake" },
    -- turn on code highlight
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- turn on incremental_selection
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        },
    },
    -- turn on code indent
    indent = {
        enable = true,
    },
})

-- turn on Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
