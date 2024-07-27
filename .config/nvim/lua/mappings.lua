require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "J", "7j", { desc = "Jump 5 times down faster" })
map("n", "K", "7k", { desc = "Jump 5 times down faster" })
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

map("n", "+", "<C-a>", { desc = "Increment Numbers" })
map("n", "-", "<C-x>", { desc = "Decrement Numbers" })

map("n", "dw", 'vb"_d', { desc = "Delete word backwards" })

map("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

map("i", "<C-z>", "<ESC>ui")

map("n", "<leader>l", ":Mason")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
