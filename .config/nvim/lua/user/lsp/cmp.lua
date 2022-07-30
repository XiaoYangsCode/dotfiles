local cmp = require("cmp")

local cmp_config = {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            -- For `vsnip` users.
            vim.fn["vsnip#anonymous"](args.body)

            -- For `luasnip` users.
            -- require('luasnip').lsp_expand(args.body)

            -- For `ultisnips` users.
            -- vim.fn["UltiSnips#Anon"](args.body)

            -- For `snippy` users.
            -- require'snippy'.expand_snippet(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    -- 补全源
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        -- For vsnip users.
        { name = "vsnip" },

        -- For luasnip users.
        -- { name = 'luasnip' },

        --For ultisnips users.
        -- { name = 'ultisnips' },

        -- -- For snippy users.
        -- { name = 'snippy' },
    }, { { name = "buffer" }, { name = "path" } }),

    -- 快捷键设置
    mapping = require("user.keybindings").cmp(cmp),
    formatting = require("user.lsp.ui").formatting
}

-- / 查找模式使用 buffer 源
cmp.setup.cmdline("/", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})

-- : 命令行模式中使用 path 和 cmdline 源.
cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
    }, {
        { name = "cmdline" },
    }),
})

cmp.setup(cmp_config)
