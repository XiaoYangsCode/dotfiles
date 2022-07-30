local packer = require("packer")
packer.startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")
    --NOTE: ui
    -- onedark
    use("ful1e5/onedark.nvim")
    -- need install   yay -S code-minimap    command Minimap
    use("wfxr/minimap.vim")
    use("nvim-lua/plenary.nvim")
    use("kyazdani42/nvim-web-devicons")
    use("moll/vim-bbye")

    -- NOTE: endior enhance
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")
    -- nvim-tree
    use("kyazdani42/nvim-tree.lua")
    -- bufferline
    use("akinsho/bufferline.nvim")
    use("kazhala/close-buffers.nvim")
    -- lualine
    use("nvim-lualine/lualine.nvim")
    -- show progress for lualine
    use("arkav/lualine-lsp-progress")
    use("windwp/nvim-autopairs")
    -- outline
    use("simrat39/symbols-outline.nvim")
    -- comment
    use("terrortylor/nvim-comment")
    use("folke/todo-comments.nvim")
    -- surround and repeat
    use("tpope/vim-repeat") --  . command enhance
    use("tpope/vim-surround") -- vim surround
    -- like easy move
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        -- config = function()
        --   -- you can configure Hop the way you like here; see :h hop-config
        --   require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        -- end
    }
    -- tabout
    -- use {
    --     'abecodes/tabout.nvim',
    --     wants = { 'nvim-treesitter' }, -- or require if not used so far
    --     -- after = { 'completion-nvim' } -- if a completion plugin is using tabs load it before
    -- }

    -- NOTE: telescope search enhance and ui for select
    use("nvim-telescope/telescope.nvim")
    -- telescope extensions
    use("LinArcX/telescope-env.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
    use("nvim-telescope/telescope-live-grep-args.nvim")
    use("nvim-telescope/telescope-dap.nvim")
    -- project for dashboard
    use("ahmedkhalf/project.nvim")

    -- NOTE: dashboard-nvim
    use("glepnir/dashboard-nvim")


    -- NOTE: treesitter for code highlight    code folding    block choose
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- NOTE: lsp
    use({ "williamboman/nvim-lsp-installer" })
    use({ "neovim/nvim-lspconfig" })
    -- show function signature when typing
    use("ray-x/lsp_signature.nvim")
    -- code action
    use("kosayoda/nvim-lightbulb")
    -- icons for lsp diagnostic
    use("onsails/lspkind-nvim")
    -- format
    -- use("mhartington/formatter.nvim")
    use("jose-elias-alvarez/null-ls.nvim")

    -- NOTE: cmp
    use("hrsh7th/nvim-cmp")
    -- snippet
    use("hrsh7th/vim-vsnip")
    -- cmp source
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lua")
    use("saadparwaiz1/cmp_luasnip") -- snippet completions
    -- snippets
    use("rafamadriz/friendly-snippets")

    -- Debugger
    -- use("ravenxrz/DAPInstall.nvim") -- help us install several debuggers
    -- use("ravenxrz/nvim-dap")
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    -- use { "jbyuki/one-small-step-for-vimkind", module = "osv" } -- debug any Lua code running in a Neovim instance
    use {
        "sakhnik/nvim-gdb",
        run = "./install.sh"
    }

    -- NOTE: git
    use("lewis6991/gitsigns.nvim")

    -- NOTE: float term
    use("akinsho/toggleterm.nvim")

    -- NOTE: markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use("preservim/vim-markdown")
    use("mzlogin/vim-markdown-toc")

    -- NOTE: cmake
    use("Shatur/neovim-cmake")

    -- NOTE: which
    use("folke/which-key.nvim")
end)
