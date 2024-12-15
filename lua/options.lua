require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
local o = vim.o
local api = vim.api

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
o.autoread = true
api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = { "*" },
})

-- Set wrap and spell in markdown and gitcommit
api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

