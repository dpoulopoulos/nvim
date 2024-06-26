require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<M-h>", "<cmd> TmuxNavigateLeft <cr>")
map("n", "<M-j>", "<cmd> TmuxNavigateDown <cr>")
map("n", "<M-k>", "<cmd> TmuxNavigateUp <cr>")
map("n", "<M-l>", "<cmd> TmuxNavigateRight <cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
