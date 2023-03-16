--
local nvim_lsp = require 'lspconfig'
-- Enable the following language servers
local servers = { 'hls', 'html', 'jdtls', 'jsonls', 'pyright', 'rnix', 'rust_analyzer','sourcekit', 'tsserver', 'yamlls' }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup { on_attach = on_attach }
end
