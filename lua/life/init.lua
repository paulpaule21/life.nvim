
local M = {}

function M.setup(opts)
  opts = opts or {}

  require("life.config").setup(opts)
  require("life.commands").setup()
  require("life.keymaps").setup()

  vim.api.nvim_create_autocmd("VimEnter", {
    once = true,
    callback = function()
      vim.defer_fn(function()
        pcall(require, "org-roam")
      end, 100)
    end,
  })
end

return M

