-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function set_custom_highlights()
  vim.api.nvim_set_hl(0, "@lsp.type.comment.c", {})
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ff9e64" })
end

local highlight_group = vim.api.nvim_create_augroup("user_custom_highlights", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
  group = highlight_group,
  callback = set_custom_highlights,
})

set_custom_highlights()
