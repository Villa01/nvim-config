return {
  "windwp/nvim-ts-autotag",
  ft = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "html",
  },
  config = function()
    local config = require("nvim-ts-autotag")
    config.setup()
  end,
}
