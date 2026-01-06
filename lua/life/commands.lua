
local M = {}

local config = require("life.config")
local templates = require("life.templates")

-- Helper to lazy-load org-roam only when needed
local function with_roam(fn)
  return function(opts)
    local roam = require("org-roam")
    fn(roam, opts)
  end
end

function M.setup()
  -- Agenda (no org-roam needed)
  vim.api.nvim_create_user_command("LifeAgenda", function()
    vim.cmd("OrgAgenda")
  end, {})

  -- Quick idea / learning
  vim.api.nvim_create_user_command(
    "LifeCaptureIdea",
    with_roam(function(roam)
      local opts = config.options
      roam.api.capture_node({
        templates = {
          i = {
            description = "Quick Idea",
            template = templates.quick_capture(),
            target = opts.roam_dir .. "/ideas/%<%Y%m%d%H%M%S>-%[slug].org",
          },
        },
      })
    end),
    {}
  )

  -- Daily journal
  vim.api.nvim_create_user_command(
    "LifeJournal",
    with_roam(function(roam)
      local opts = config.options
      roam.api.capture_node({
        templates = {
          j = {
            description = "Daily Journal",
            template = templates.daily_journal(),
            target = opts.journal_dir .. "/%<%Y-%m-%d>.org",
          },
        },
      })
    end),
    {}
  )

  -- Weekly review
  vim.api.nvim_create_user_command(
    "LifeWeeklyReview",
    with_roam(function(roam)
      local opts = config.options
      roam.api.capture_node({
        templates = {
          w = {
            description = "Weekly Review",
            template = templates.weekly_review(),
            target = opts.reviews_dir .. "/weekly/%<%Y-W%V>.org",
          },
        },
      })
    end),
    {}
  )

  -- Person note
  vim.api.nvim_create_user_command(
    "LifeNewPerson",
    with_roam(function(roam, cmd_opts)
      local opts = config.options
      roam.api.capture_node({
        title = cmd_opts.args ~= "" and cmd_opts.args or nil,
        templates = {
          p = {
            description = "Person",
            template = templates.person_note(),
            target = opts.roam_dir .. "/people/%[slug].org",
          },
        },
      })
    end),
    { nargs = "?" }
  )

  -- Monthly review
  vim.api.nvim_create_user_command(
    "LifeMonthlyReview",
    with_roam(function(roam)
      local opts = config.options
      roam.api.capture_node({
        templates = {
          m = {
            description = "Monthly Review",
            template = templates.monthly_review(),
            target = opts.reviews_dir .. "/monthly/%<%Y-%m>.org",
          },
        },
      })
    end),
    {}
  )

  -- Yearly review
  vim.api.nvim_create_user_command(
    "LifeYearlyReview",
    with_roam(function(roam)
      local opts = config.options
      roam.api.capture_node({
        templates = {
          y = {
            description = "Yearly Review",
            template = templates.yearly_review(),
            target = opts.reviews_dir .. "/yearly/%<%Y>.org",
          },
        },
      })
    end),
    {}
  )

  -- Placeholders (so keymaps never break)
  vim.api.nvim_create_user_command("LifeNote", function()
    vim.notify("LifeNote not implemented yet", vim.log.levels.WARN)
  end, {})

  vim.api.nvim_create_user_command("LifeInbox", function()
    vim.notify("LifeInbox not implemented yet", vim.log.levels.WARN)
  end, {})
end

return M

