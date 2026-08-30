-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

---- Keymapping for lsp lsp_lines
-- vim.keymap.set("", "<Leader>ps", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
local function set_terminal_keymaps(event)
  local opts = { buffer = event.buf }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

local terminal_group = vim.api.nvim_create_augroup("user_terminal_keymaps", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
  group = terminal_group,
  pattern = "term://*",
  callback = set_terminal_keymaps,
})

-- open default terminal vertically
vim.keymap.set({ "n", "t" }, "<C-/>", function()
  Snacks.terminal(nil, { win = { position = "right" } })
end, { desc = "Terminal (vertical)" })

-- resize splits
vim.keymap.set({ "n", "t" }, "<C-Left>", "<cmd>vertical resize -5<cr>", { desc = "Decrease window width" })
vim.keymap.set({ "n", "t" }, "<C-Right>", "<cmd>vertical resize +5<cr>", { desc = "Increase window width" })
