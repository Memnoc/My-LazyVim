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
}
