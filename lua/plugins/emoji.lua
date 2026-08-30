return {
  {
    "ziontee113/icon-picker.nvim",
    dependencies = { "stevearc/dressing.nvim" },
    keys = {
      { "<Leader>i", "<cmd>IconPickerNormal<cr>", desc = "Icon picker" },
      { "<Leader>y", "<cmd>IconPickerYank<cr>", desc = "Icon picker yank" },
      { "<C-i>", "<cmd>IconPickerInsert<cr>", mode = "i", desc = "Icon picker insert" },
    },
    opts = {
      disable_legacy_commands = true,
    },
  },
}
