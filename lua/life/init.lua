local M = {}

function M.setup(opts)
  opts = vim.tbl_deep_extend("force", {
    enable_agenda_on_start = true,
  }, opts or {})

  require("life.agenda").setup(opts)
  require("life.config").setup(opts)
  require("life.commands").setup()
  require("life.keymaps").setup()
end

return M

