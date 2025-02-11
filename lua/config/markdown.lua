vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.bo.formatoptions = "tcroql" -- 't' uses textwidth, other flags for comments/auto-format
  end,
})
