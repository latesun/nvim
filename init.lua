require("config.lazy")
require("config.mappings")
require("config.options")

vim.diagnostic.config({ virtual_text = true })
vim.lsp.enable({ "lua_ls", "pylsp", "ts_ls" })
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local line = mark[1]
		local col = mark[2]
		local buf_name = vim.api.nvim_buf_get_name(0)
		if line > 0 and line <= vim.api.nvim_buf_line_count(0) and buf_name ~= "" then
			pcall(vim.api.nvim_win_set_cursor, 0, { line, col })
		end
	end,
})
