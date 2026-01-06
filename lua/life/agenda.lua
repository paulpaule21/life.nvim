local M = {}

function M.open()
  vim.cmd("OrgAgenda")
end

function M.setup(opts)
  if not opts.enable_agenda_on_start then
    return
  end

  vim.api.nvim_create_autocmd("User", {
    pattern = "OrgModeStarted",
    callback = function()
      vim.schedule(function()
        M.open()
      end)
    end,
  })
end

return M

