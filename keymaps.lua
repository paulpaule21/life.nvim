local M = {}
local cfg = require("life.config").options

function M.setup()
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }
  local l = cfg.leader

  map("n", l .. "a", "<Cmd>LifeAgenda<CR>", opts)
  map("n", l .. "j", "<Cmd>LifeJournal<CR>", opts)
  map("n", l .. "n", "<Cmd>LifeNote<CR>", opts)
  map("n", l .. "t", "<Cmd>LifeInbox<CR>", opts)
  map("n", l .. "r", "<Cmd>LifeWeeklyReview<CR>", opts)
  map("n", l .. "i", "<Cmd>LifeCaptureIdea<CR>", opts)
  map("n", l .. "m", "<Cmd>LifeMonthlyReview<CR>", opts)
  map("n", l .. "y", "<Cmd>LifeYearlyReview<CR>", opts)
end

return M

