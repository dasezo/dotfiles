require "nvchad.autocmds"
-- local utils = require "utils"
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Turn off paste mode when leaving insert
autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable commenting new lines
vim.cmd "autocmd BufEnter * set formatoptions-=cro"
vim.cmd "autocmd BufEnter * setlocal formatoptions-=cro"

-- Fix conceallevel for json files
autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})
-- Highlight yanked text
autocmd("TextYankPost", {
  pattern = "*",
  group = augroup("YankHighlight", {}),
  callback = function()
    vim.highlight.on_yank()
  end,
})
