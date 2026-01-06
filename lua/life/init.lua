local M = {}

function M.setup(opts)
  opts = opts or {}

  require("life.config").setup(opts)
  require("life.commands").setup()
  require("life.keymaps").setup()
end

return M

