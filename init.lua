require("config.lazy")
require("config.mappings")
require("config.options")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.enable({ "lua_ls", "pylsp" })
