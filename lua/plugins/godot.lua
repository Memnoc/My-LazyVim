return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {
          cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
          root_dir = require("lspconfig.util").root_pattern("project.godot", ".git"),
          on_attach = function()
            local pipe = "/tmp/godot.pipe"
            vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
          end,
        },
      },
    },
  },
<<<<<<< HEAD
=======
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "gdscript", "godot_resource" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        gdformat = {
          command = "/opt/homebrew/bin/gdformat",
        },
      },
      formatters_by_ft = {
        gdscript = { "gdformat" },
      },
    },
  },
>>>>>>> b67eb0c (fixed gdscript config)
}
