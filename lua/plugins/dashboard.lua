return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      enabled = true,
      preset = {
        header = table.concat({
          [[  /\ \▔\___  ___/\   /(●)_ __ ___  ]],
          [[ /  \/ / _ \/ _ \ \ / / | '_ ` _ \ ]],
          [[/ /\  /  __/ (_) \ V /| | | | | | |]],
          [[\_\ \/ \___|\___/ \_/ |_|_| |_| |_|]],
          [[───────────────────────────────────]],
        }, "\n"),
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
