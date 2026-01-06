local M = {}

function M.setup()
  local cfg = require("life.config").options
  local map = vim.keymap.set
  local opts = { silent = true }
  local l = cfg.leader

  -- <Plug> mappings (public API)
  map("n", "<Plug>(LifeAgenda)", "<Cmd>LifeAgenda<CR>", opts)
  map("n", "<Plug>(LifeCaptureIdea)", "<Cmd>LifeCaptureIdea<CR>", opts)
  map("n", "<Plug>(LifeJournal)", "<Cmd>LifeJournal<CR>", opts)
  map("n", "<Plug>(LifeWeeklyReview)", "<Cmd>LifeWeeklyReview<CR>", opts)
  map("n", "<Plug>(LifeMonthlyReview)", "<Cmd>LifeMonthlyReview<CR>", opts)
  map("n", "<Plug>(LifeYearlyReview)", "<Cmd>LifeYearlyReview<CR>", opts)

  -- Default keymaps (can be disabled later)
  map("n", l .. "<Plug>oa", "<Plug>(LifeAgenda)", opts)
  map("n", l .. "<Plug>oi", "<Plug>(LifeCaptureIdea)", opts)
  map("n", l .. "<Plug>oj", "<Plug>(LifeJournal)", opts)
  map("n", l .. "<Plug>or", "<Plug>(LifeWeeklyReview)", opts)
  map("n", l .. "<Plug>om", "<Plug>(LifeMonthlyReview)", opts)
  map("n", l .. "<Plug>oy", "<Plug>(LifeYearlyReview)", opts)

  -- New keymaps for tasks
  map("n", l .. "<Plug>ot", "<Cmd>LifeNewTask<CR>", opts)  -- Create a new task
  map("n", l .. "<Plug>op", "<Cmd>LifeFilterTasksByPriority<CR>", opts)  -- Filter tasks by priority
  map("n", l .. "<Plug>od", "<Cmd>LifeFilterTasksDueToday<CR>", opts)  -- Filter tasks due today

  -- You can also define keybindings for switching between task status or other actions
  map("n", l .. "<Plug>oc", "<Cmd>LifeCompleteTask<CR>", opts)  -- Mark a task as complete
end

return M

