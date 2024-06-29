require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map navigation between tmux panes
map("n", "<A-h>", "<cmd> TmuxNavigateLeft <cr>")
map("n", "<A-j>", "<cmd> TmuxNavigateDown <cr>")
map("n", "<A-k>", "<cmd> TmuxNavigateUp <cr>")
map("n", "<A-l>", "<cmd> TmuxNavigateRight <cr>")

-- remap horizontal terminal
map({ "n", "t" }, "<A-t>", function ()
  require("nvchad.term").toggle { pos = "sp", id = "horizontalTerm"}
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
