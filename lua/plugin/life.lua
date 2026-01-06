if vim.g.loaded_life_nvim then
  return
end
vim.g.loaded_life_nvim = true

-- Do nothing automatically.
-- life.nvim is initialized explicitly via require("life").setup()
-- This file exists to support health checks and plugin discovery.

