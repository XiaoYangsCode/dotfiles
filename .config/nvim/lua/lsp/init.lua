local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("lsp.handlers").setup()
require("lsp.lsp-installer")
require("lsp.ui")
require("lsp.lsp-signature")
require("lsp.null-ls")
require("lsp.cmp")
