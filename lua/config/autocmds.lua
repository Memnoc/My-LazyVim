-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Make C comments and ifdef colored
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "@lsp.type.comment.c", {})
  end,
})

-- Make the buffer separation line more visible
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ff9e64" })
  end,
})
