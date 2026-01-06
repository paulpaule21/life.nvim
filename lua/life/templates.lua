local M = {}
local utils = require("life.utils")
local config = require("life.config")

-- later
local cfg = config.options

function M.daily_journal()
  return table.concat({
    "#+title: %<%Y-%m-%d>",
    "#+filetags: :journal:",
    "",
    "* Energy",
    "- Morning:",
    "- Evening:",
    "",
    "* Events",
    "",
    "* Learnings",
    "%?",
    "",
    "* Thoughts",
    "",
    "* Gratitude",
  }, "\n")
end

function M.weekly_review()
  return table.concat({
    "#+title: Week %<%V> Review",
    "#+filetags: :review:weekly:",
    "",
    "* Wins",
    "",
    "* Losses",
    "",
    "* Learnings",
    "",
    "* Task Review",
    "- A:",
    "- B:",
    "- C:",
    "- D:",
    "",
    "* Adjustments",
    "%?",
  }, "\n")
end

function M.quick_capture()
  return table.concat({
    "#+title: %?",
    "#+filetags: :idea:",
    "",
    "* Context",
    "",
    "* Thought",
  }, "\n")
end

function M.person_note()
  return table.concat({
    "#+title: ${title}",
    "#+filetags: :person:",
    "",
    "* Context",
    "",
    "* Relationship",
    "",
    "* Interactions",
    "",
    "* Notes",
    "%?",
  }, "\n")
end

function M.monthly_review()
  return table.concat({
    "#+title: %<%Y-%m> Monthly Review",
    "#+filetags: :review:monthly:",
    "",
    "* Highlights",
    "",
    "* Lowlights",
    "",
    "* Learnings",
    "",
    "* Progress Review",
    "- Career:",
    "- Skills:",
    "- Health:",
    "- Relationships:",
    "",
    "* What worked",
    "",
    "* What didn’t",
    "",
    "* Focus for next month",
    "%?",
  }, "\n")
end

function M.yearly_review()
  return table.concat({
    "#+title: %<%Y> Yearly Review",
    "#+filetags: :review:yearly:",
    "",
    "* Year Summary",
    "",
    "* Biggest Wins",
    "",
    "* Biggest Failures",
    "",
    "* Key Learnings",
    "",
    "* Personal Growth",
    "- Technical:",
    "- Leadership:",
    "- Personal:",
    "",
    "* What I would do differently",
    "",
    "* Principles reinforced or changed",
    "",
    "* Vision for next year",
    "%?",
  }, "\n")
end

return M

