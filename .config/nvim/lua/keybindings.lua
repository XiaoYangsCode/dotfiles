local map = vim.api.nvim_set_keymap
local bufmap = vim.api.nvim_buf_set_keymap
-- 复用 opt 参数
local opt = { noremap = true, silent = true }

map("n", " ", "", opt)
-- map("", " ", "<Nop>", opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE: quick wnd
-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Ctrl + hjkl  窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- 左右比例控制
map("n", "<C-Left>", ":vertical resize +2<CR>", opt)
map("n", "<C-Right>", ":vertical resize -2<CR>", opt)
map("n", "s,", ":vertical resize +20<CR>", opt)
map("n", "s.", ":vertical resize -20<CR>", opt)
-- 上下比例
map("n", "sj", ":resize -10<CR>", opt)
map("n", "sk", ":resize +10<CR>", opt)
map("n", "<C-Down>", ":resize -2<CR>", opt)
map("n", "<C-Up>", ":resize +2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)

-- NOTE: enditor enhance
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "<A-j>", ":move '>+1<CR>gv-gv", opt)
map("v", "<A-k>", ":move '<-2<CR>gv-gv", opt)
-- insert
map("i", "jj", "<Esc>", opt)

-- 上下滚动浏览
map("", "J", "5j", opt)
map("", "K", "5k", opt)
-- 行内快速移动
map("n", "W", "5w", opt)
map("n", "B", "5b", opt)
map("", "H", "0", opt)
map("", "L", "$", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
-- map("n", "<C-u>", "9k", opt)
-- map("n", "<C-d>", "9j", opt)

-- NOTE: FileExpoler
map("n", "<leader>e", ":NvimTreeToggle<cr>", opt)
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<cr>", opt)
map('v', '<leader>f', "<ESC><cmd>lua vim.lsp.buf.range_formatting()<CR>", opt)
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
map("n", "ZZ", ":lua require('utils').SaveAndExit()<cr>", opt)
-- quit
-- keymap("n", "q", ":q<CR>", opts)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)


-- NOTE: terminal
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- NOTE: bufferline
-- 左右Tab切换
map("n", "tk", ":BufferLineCyclePrev<CR>", opt)
map("n", "tj", ":BufferLineCycleNext<CR>", opt)
-- 关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- NOTE: Telescope
-- 查找文件
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- 全局搜索
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)

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
map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', opt)
map("n", "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<CR>", opt)
map("n", "<leader>hd", "<cmd>Gitsigns diffthis<CR>", opt)
map("n", "<leader>hD", '<cmd>lua require"gitsigns".diffthis("~")<CR>', opt)
map("n", "<leader>td", "<cmd>Gitsigns toggle_deleted<CR>", opt)
-- Text object
-- map("o", "ih", ":<C-U>Gitsigns select_hunk<CR>", opt)
-- map("x", "ih", ":<C-U>Gitsigns select_hunk<CR>", opt)

-- NOTE: outline
map("n", "<leader>v", ":SymbolsOutline<CR>", opt)

-- 插件快捷键
local pluginKeys = {}

-- NOTE: cmp
pluginKeys.cmp = function(cmp)
	return {
		-- 出现补全
		["<A-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		-- 取消
		["<A-,>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- 上一个
		["<A-k>"] = cmp.mapping.select_prev_item(),
		-- 下一个
		["<A-j>"] = cmp.mapping.select_next_item(),
		-- 确认
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		-- 如果窗口内容太多，可以滚动
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
	bufmap(mapbuf, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
	-- 没用到
	-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
	-- mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
	-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
	-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
	-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- NOTE: nvim-tree
-- 打开关闭tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
	-- 打开文件或文件夹
	{ key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
	-- 分屏打开文件
	{ key = "v", action = "vsplit" },
	{ key = "h", action = "split" },
	-- 显示隐藏文件
	{ key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
	{ key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
	-- 文件操作
	{ key = "<F5>", action = "refresh" },
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "r", action = "rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "p", action = "paste" },
	{ key = "s", action = "system_open" },
}

-- NOTE: insert mode short key for telescope
pluginKeys.telescopeList = {
	i = {
		-- 上下移动
		["<C-j>"] = "move_selection_next",
		["<C-k>"] = "move_selection_previous",
		["<Down>"] = "move_selection_next",
		["<Up>"] = "move_selection_previous",
		-- 历史记录
		["<C-n>"] = "cycle_history_next",
		["<C-p>"] = "cycle_history_prev",
		-- 关闭窗口
		["<C-c>"] = "close",
		-- 预览窗口上下滚动
		["<C-u>"] = "preview_scrolling_up",
		["<C-d>"] = "preview_scrolling_down",
	},
}

return pluginKeys
