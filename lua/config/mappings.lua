local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<Esc>", "<Esc> <cmd> noh <CR>")
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<leader>w", "<cmd> w <CR><ESC>")
map({ "n", "i", "v" }, "<leader>wa", "<cmd> wa <CR><ESC>")
map("n", "<leader>a", "<cmd> Dashboard <CR>")
map("n", "<leader>l", "<cmd> Lazy <CR>")
map("n", "<leader>m", "<cmd> Mason <CR>")
map("n", "<leader>k", "<cmd> Interestingwords --toggle <CR>")
map("n", "<leader>K", "<cmd> Interestingwords --remove_all <CR>")
map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>")
map("n", "<leader>n", "<cmd> NvimTreeFindFile <CR>")
map("n", "tt", "<cmd> AerialToggle <CR>", { desc = "Toggle Document Symbols" })

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>gr", builtin.lsp_references, { desc = "Telescope LSP References" })
map("n", "<leader>gd", builtin.lsp_definitions, { desc = "Telescope LSP Definitions" })
map("n", "<leader>gi", builtin.lsp_implementations, { desc = "Telescope LSP Implementations" })
map("n", "<leader>gr", builtin.lsp_references, { desc = "Telescope LSP References" })
map("n", "<leader>go", builtin.diagnostics, { desc = "Telescope LSP Diagnostics" })
map("n", "<leader>gs", builtin.lsp_document_symbols, { desc = "Telescope LSP Document Symbols" })

local opts = { noremap = true, silent = true }
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)
