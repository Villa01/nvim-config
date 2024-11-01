return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      --  ensure_installed = { "c", "lua", "vim", "javascript", "vimdoc",
      --                        "html", "go", "bash", "yaml", "json", "comment",
      --                        "dockerfile", "gitignore", "python"},
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
