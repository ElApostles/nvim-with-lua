local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "hdoo.lsp.lsp-installer"
require("hdoo.lsp.handlers").setup()
-- require "hdoo.lsp.null-ls"
