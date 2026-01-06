local M = {}

function M.setup(opts)
  opts = vim.tbl_deep_extend("force", {
    enable_agenda_on_start = true,
  }, opts or {})

  require("life.agenda").setup(opts)
  require("life.config").setup(opts)
  require("life.commands").setup()
  require("life.keymaps").setup()

  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.schedule(function()
        require("life.templates").preload()
      end)
    end,
  })

end

return M

