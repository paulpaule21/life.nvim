local M = {}

function M.setup(opts)
  require("life.config").setup(opts)
  require("life.commands").setup()
  require("life.keymaps").setup()
end

return M

