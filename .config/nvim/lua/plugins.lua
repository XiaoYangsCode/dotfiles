local packer = require("packer")
packer.startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")
  --NOTE: ui
  -- onedark
  use("ful1e5/onedark.nvim")
  -- need install   yay -S code-minimap    command Minimap
  use("wfxr/minimap.vim")

  -- NOTE: endior enhance
  -- indent-blankline
  use("lukas-reineke/indent-blankline.nvim")
  -- nvim-tree
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- bufferline
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
  use("kazhala/close-buffers.nvim")
  -- lualine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
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

  -- NOTE: dashboard-nvim
  use("glepnir/dashboard-nvim")
  -- project for dashboard
  use("ahmedkhalf/project.nvim")

  -- NOTE: telescope search enhance and ui for select
  use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
  -- telescope extensions
  use("LinArcX/telescope-env.nvim")
  use("nvim-telescope/telescope-ui-select.nvim")
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use("nvim-telescope/telescope-live-grep-args.nvim")
  use("nvim-telescope/telescope-dap.nvim")

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
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

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

  -- NOTE: git
  use("lewis6991/gitsigns.nvim")

  -- NOTE: float term
  use("akinsho/toggleterm.nvim")

  -- NOTE: markdown
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

end)
