local map = vim.api.nvim_set_keymap
local bufmap = vim.api.nvim_buf_set_keymap
local opt = { noremap = true, silent = true }

map("n", " ", "", opt)
-- map("", " ", "<Nop>", opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE: quick wnd
-- diable s
map("n", "s", "", opt)
-- windows split
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- close cur
map("n", "sc", "<C-w>c", opt)
-- close other
map("n", "so", "<C-w>o", opt)
-- Ctrl + hjkl window jump
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- left right ratio
map("n", "<C-Left>", ":vertical resize +2<CR>", opt)
map("n", "<C-Right>", ":vertical resize -2<CR>", opt)
map("n", "s,", ":vertical resize +20<CR>", opt)
map("n", "s.", ":vertical resize -20<CR>", opt)
-- up down ratio
map("n", "sj", ":resize -10<CR>", opt)
map("n", "sk", ":resize +10<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)
map("n", "<C-Up>", ":resize +2<CR>", opt)
-- equal ratio
map("n", "s=", "<C-w>=", opt)

-- NOTE: enditor enhance
-- visual code indent
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- move choosed text
map("v", "<A-j>", ":move '>+1<CR>gv-gv", opt)
map("v", "<A-k>", ":move '<-2<CR>gv-gv", opt)
-- insert
map("i", "jj", "<Esc>", opt)
-- copy to system clip  need xclip
map("v", "Y", '"+y', opt)

-- quick move
map("", "J", "5j", opt)
map("", "K", "5k", opt)
-- quick move inline
map("n", "W", "5w", opt)
map("n", "B", "5b", opt)
map("", "H", "0", opt)
map("", "L", "$", opt)
-- ctrl u / ctrl + d 
-- map("n", "<C-u>", "9k", opt)
-- map("n", "<C-d>", "9j", opt)

-- easymove
map("n", "<leader>hl", ":HopLine<CR>", opt)
map("n", "<leader>hw", ":HopWord<CR>", opt)
map("n", "<leader>ha", ":HopAnywhere<CR>", opt)

map("n", "<C-r>", ":lua require('user.utils').run_files()<CR>", opt)

-- NOTE: FileExpoler
-- no highlight
map("n", "<leader>l", ":nohl<cr>", opt)
-- save buffer
map("n", "<leader>w", ":w<cr>", opt)
-- exit cur window
map("n", "<leader>q", ":q<cr>", opt)
-- delete cur buffer
map("n", "<leader>d", ":bp<bar>sp<bar>bn<bar>bd<CR>", opt)
map("n", "<leader>D", ":bp<bar>sp<bar>bn<bar>bd<CR>", opt)
-- exit whole program
map("n", "ZZ", ":lua require('user.utils').SaveAndExit()<cr>", opt)
-- quit
-- keymap("n", "q", ":q<CR>", opts)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)


-- NOTE: terminal
map("n", "<C-\\>", ":ToggleTerm<CR>", opt)
map("n", "<leader>g", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opt)
map("n", "<leader>t", ":ToggleTerm size=10 direction=horizontal<CR>", opt)
map("n", "<leader>vt", ":ToggleTerm direction=tab<CR>", opt)
-- map("n", "<leader>t", ":sp | terminal<CR>", opt)
-- map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc><Esc>", "<C-\\><C-n>", opt)
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- NOTE: bufferline
map("n", "tk", ":BufferLineCyclePrev<CR>", opt)
map("n", "tj", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>bp", ":BufferLineTogglePin<CR>", opt)
-- close
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
map("n", "to", ":BWipeout other<CR>", opt)

-- NOTE: Gitsigns
-- Navigation
map("n", "<leader>j", ":Gitsigns next_hunk<CR>", opt)
map("n", "<leader>k", ":Gitsigns prev_hunk<CR>", opt)
-- Actions
map("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", opt)
map("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", opt)
map("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<CR>", opt)
map("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<CR>", opt)
map("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<CR>", opt)
map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", opt)
map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>", opt)
map("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>", opt)
map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', opt)
map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opt)
-- map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>', opt)
-- Text object
-- map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>", opt)
-- map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>", opt)


-- NOTE: mimimap
map("n", "<A-m>", ":MinimapToggle<CR>", opt)

-- NOTE: qt
map("n", "<A-d>", "<cmd>lua require('user.utils').run_test()<CR>", opt)
map("n", "<A-q>", "<cmd>lua require('user.utils').run_qt_designer()<CR>", opt)
map("n", "<A-w>", "<cmd>lua require('user.utils').run_qt_designer_args()<CR>", opt)
map("n", "<A-u>", "<cmd>lua require('user.utils').run_pyuic()<CR>", opt)

local pluginKeys = {}

-- NOTE: cmp
pluginKeys.cmp = function(cmp)
    return {
        -- show cmp
        ["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        -- disable
        ["<A-,>"] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        -- pre
        ["<A-k>"] = cmp.mapping.select_prev_item(),
        -- next
        ["<A-j>"] = cmp.mapping.select_next_item(),
        -- confirm
        ["<CR>"] = cmp.mapping.confirm({
            select = true,
            behavior = cmp.ConfirmBehavior.Replace,
        }),
        -- scorll
        ["<A-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<A-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    }
end

-- NOTE: lsp call back
pluginKeys.mapLSP = function(mapbuf)
    -- rename
    bufmap(mapbuf, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    -- code action
    bufmap(mapbuf, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
    -- go xx
    bufmap(mapbuf, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
    bufmap(mapbuf, "n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    bufmap(mapbuf, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    bufmap(mapbuf, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
    bufmap(mapbuf, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
    -- diagnostic
    bufmap(mapbuf, "n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
    bufmap(mapbuf, "n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
    bufmap(mapbuf, "n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
    -- format
    bufmap(mapbuf, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
    bufmap(mapbuf, 'v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.range_formatting()<CR>", opt)
end

-- NOTE: nvim-tree
-- open tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
pluginKeys.nvimTreeList = {
    -- open
    { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
    -- open split
    { key = "v", action = "vsplit" },
    { key = "h", action = "split" },
    -- show hide files
    { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
    { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
    -- file operation
    { key = "<F5>", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    -- { key = "s", action = "system_open" },
}

-- NOTE: Telescope
-- find files
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- gloabal search
map("n", "<C-f>", ":Telescope live_grep_args<CR>", opt)
-- map("n", "<C-d>", ":lua require'user.utils'.search_config_files()<CR>", opt)
map("n", "<C-d>", ":Telescope live_grep<CR>", opt)
-- search symbols
map("n", "<leader>s", ":Telescope lsp_document_symbols<CR>", opt)
map("n", "<leader>S", ":Telescope lsp_dynamic_workspace_symbols<CR>", opt)
map("n", "<leader>p", ":Telescope projects<CR>", opt)
-- insert mode short key for telescope
pluginKeys.telescopeList = {
    i = {
        -- movement
        ["<A-j>"] = "move_selection_next",
        ["<A-k>"] = "move_selection_previous",
        ["<Down>"] = "move_selection_next",
        ["<Up>"] = "move_selection_previous",
        -- history
        ["<C-n>"] = "cycle_history_next",
        ["<C-p>"] = "cycle_history_prev",
        -- close
        ["<C-c>"] = "close",
        -- scorll preview wnd
        ["<C-u>"] = "preview_scrolling_up",
        ["<C-d>"] = "preview_scrolling_down",
    },
}

-- NOTE: outline
map("n", "<leader>v", ":SymbolsOutline<CR>", opt)
pluginKeys.outlineKeymap = {
    close = { "<Esc>", "q" },
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "gh",
    toggle_preview = "gp",
    rename_symbol = "r",
    code_actions = "a",
}

-- NOTE: nvim-dap
pluginKeys.mapDAP = function()
    -- continue
    map("n", "<leader>dc", ":lua require'dap'.continue()<CR>", opt)
    -- toggle breakpoint
    map("n", "<leader>dt",
        "<cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>", opt)
    -- map("n", "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()", opt)
    map("n", "<leader>dT", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opt)
    -- map("n", "<leader>dC", ":lua require('dap').clear_breakpoints()<CR>", opt)
    map("n", "<leader>dC",
        "<cmd>lua require('dap').clear_breakpoints(); require'user.dap.dap-util'.remove_allbreakpoints()<cr>", opt)
    --  stepOver, stepOut, stepInto
    map("n", "<leader>dj", ":lua require'dap'.step_over()<CR>", opt)
    map("n", "<leader>dk", ":lua require'dap'.step_out()<CR>", opt)
    map("n", "<leader>dl", ":lua require'dap'.step_into()<CR>", opt)
    -- float wnd for variable
    map("n", "<leader>dh", ":lua require'dapui'.eval()<CR>", opt)

end

pluginKeys.dapuiKeymap = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
}

return pluginKeys
