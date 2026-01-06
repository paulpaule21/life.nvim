local M = {}

function M.check()
  vim.health.start("life.nvim")

  -- orgmode
  if pcall(require, "orgmode") then
    vim.health.ok("orgmode.nvim is installed")
  else
    vim.health.error("orgmode.nvim is not installed")
  end

  -- org-roam (optional)
  if pcall(require, "org-roam") then
    vim.health.ok("org-roam.nvim is installed")
  else
    vim.health.warn("org-roam.nvim not found (indexing disabled)")
  end

  -- config
  local cfg = require("life.config").options
  if cfg then
    vim.health.ok("life.nvim configuration loaded")
  else
    vim.health.error("life.nvim setup() was not called")
  end
end

return M

