local M = {}

function M.setup(opts)
  opts = opts or {}

  local config = require("life.config")
  config.setup(opts)

  require("life.commands").setup()
  require("life.keymaps").setup()
  require("life.agenda").setup(config.options)

  -- Warm up org-roam only when orgmode is ready
  vim.api.nvim_create_autocmd("User", {
    pattern = "OrgModeStarted",
    once = true,
    callback = function()
      pcall(require, "org-roam")
    end,
  })
end

return M
