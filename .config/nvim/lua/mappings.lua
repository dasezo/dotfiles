require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "J", "5j", { desc = "Jump 5 times down faster" })
map("n", "K", "5k", { desc = "Jump 5 times down faster" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
