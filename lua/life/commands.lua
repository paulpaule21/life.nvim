
local M = {}

function M.setup()
  -- Make sure org-roam is loaded before using its commands
  vim.api.nvim_create_autocmd("User", {
    pattern = "OrgModeStarted", -- Trigger only when orgmode is fully ready
    callback = function()
      vim.api.nvim_create_user_command("LifeAgenda", function()
        vim.cmd("Org agenda")
      end, {})

      -- Capture / Create
      vim.api.nvim_create_user_command("LifeCaptureIdea", function()
        vim.cmd("OrgRoamCapture")
      end, {})

      vim.api.nvim_create_user_command("LifeJournal", function()
        vim.cmd("OrgRoamCapture j")
      end, {})

      vim.api.nvim_create_user_command("LifeWeeklyReview", function()
        vim.cmd("OrgRoamFindNode Weekly Review")
      end, {})

      vim.api.nvim_create_user_command("LifeMonthlyReview", function()
        vim.cmd("OrgRoamFindNode Monthly Review")
      end, {})

      vim.api.nvim_create_user_command("LifeYearlyReview", function()
        vim.cmd("OrgRoamFindNode Yearly Review")
      end, {})

      vim.api.nvim_create_user_command("LifeNewPerson", function()
        vim.cmd("OrgRoamCapture p")
      end, {})

      vim.api.nvim_create_user_command("LifeFind", function()
        vim.cmd("OrgRoamFindNode")
      end, {})

      -- Assuming you have added the filtering commands as mentioned before
      vim.api.nvim_create_user_command("LifeFilterTasksByPriority", function()
        vim.cmd("OrgAgendaListPriority")  -- Custom Org Mode search query for tasks by priority
      end, {})

      vim.api.nvim_create_user_command("LifeFilterTasksDueToday", function()
        vim.cmd("OrgAgendaListDueToday")  -- Custom Org Mode search query for tasks due today
      end, {})

      vim.api.nvim_create_user_command("LifeNewTask", function()
        local template = require("life.templates").task_template()
        vim.cmd("enew")  -- Create a new empty buffer
        vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(template, "\n"))
      end, {})
    end,
  })
end

return M

