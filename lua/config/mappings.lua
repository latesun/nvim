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

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
