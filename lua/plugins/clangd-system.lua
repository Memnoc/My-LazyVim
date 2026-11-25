-- Mason ships no clangd build for Linux ARM64 (e.g. Fedora Asahi), so use the
-- distro's clangd there (Fedora: clang-tools-extra). Everywhere else, keep
-- LazyVim's default of installing clangd through Mason.
local uname = vim.uv.os_uname()
local linux_arm64 = uname.sysname == "Linux" and (uname.machine == "aarch64" or uname.machine == "arm64")

if not linux_arm64 then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = { mason = false },
      },
    },
  },
}
