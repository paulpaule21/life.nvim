local M = {}

function M.open()
  if vim.fn.exists(":Org") ~= 2 then
    vim.notify("orgmode.nvim not loaded", vim.log.levels.WARN)
    return
  end

  vim.cmd("Org agenda")
end

function M.setup(opts)
  if not opts.enable_agenda_on_start then
    return
  end

  vim.api.nvim_create_autocmd("User", {
    pattern = "OrgModeStarted",
    callback = function()
      vim.schedule(M.open)
    end,
  })
end

return M

