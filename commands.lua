
local M = {}
local roam = require("org-roam")
local cfg = require("life.config").options
local utils = require("life.utils")
local templates = require("life.templates")

function M.setup()
  -- Agenda
  vim.api.nvim_create_user_command("LifeAgenda", function()
    vim.cmd("OrgAgenda")
  end, {})

  -- Daily journal
  vim.api.nvim_create_user_command("LifeJournal", function()
    roam.api.capture_node({
      templates = {
        j = {
          description = "Daily Journal",
          template = templates.daily_journal(),
          target = cfg.journal_dir .. "/%<%Y-%m-%d>.org",
        },
      },
    })
  end, {})

  -- Weekly review
  vim.api.nvim_create_user_command("LifeWeeklyReview", function()
    roam.api.capture_node({
      templates = {
        w = {
          description = "Weekly Review",
          template = templates.weekly_review(),
          target = cfg.reviews_dir .. "/weekly/%<%Y-W%V>.org",
        },
      },
    })
  end, {})

  -- Quick idea / learning
  vim.api.nvim_create_user_command("LifeCaptureIdea", function()
    roam.api.capture_node({
      templates = {
        i = {
          description = "Quick Idea",
          template = templates.quick_capture(),
          target = cfg.roam_dir .. "/ideas/%<%Y%m%d%H%M%S>-%[slug].org",
        },
      },
    })
  end, {})

  -- Person note
  vim.api.nvim_create_user_command("LifeNewPerson", function(opts)
    roam.api.capture_node({
      title = opts.args ~= "" and opts.args or nil,
      templates = {
        p = {
          description = "Person",
          template = templates.person_note(),
          target = cfg.roam_dir .. "/people/%[slug].org",
        },
      },
    })
  end, { nargs = "?" })

  -- Monthly review
  vim.api.nvim_create_user_command("LifeMonthlyReview", function()
    roam.api.capture_node({
      templates = {
        m = {
          description = "Monthly Review",
          template = templates.monthly_review(),
          target = cfg.reviews_dir .. "/monthly/%<%Y-%m>.org",
        },
      },
    })
  end, {})

  -- Yearly review
  vim.api.nvim_create_user_command("LifeYearlyReview", function()
    roam.api.capture_node({
      templates = {
        y = {
          description = "Yearly Review",
          template = templates.yearly_review(),
          target = cfg.reviews_dir .. "/yearly/%<%Y>.org",
        },
      },
    })
  end, {})

end

return M

