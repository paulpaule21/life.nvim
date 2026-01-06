---@class LifeConfig
---@field leader string
---@field notes_dir string
---@field roam_dir string
---@field people_dir string
---@field journal_dir string
---@field tasks_dir string
---@field reviews_dir string
---@field enable_agenda_on_start boolean

local M = {}

---@type LifeConfig
M.defaults = {
  leader = "<Leader>l",

  notes_dir = "~/.notes",
  roam_dir = "~/.notes/roam",
  people_dir = "~/.notes/roam/people",
  journal_dir = "~/.notes/journal",
  tasks_dir = "~/.notes/tasks",
  reviews_dir = "~/.notes/reviews",

  enable_agenda_on_start = false,
}

local function expand(v)
  if type(v) == "string" then
    return vim.fn.expand(v)
  end
  return v
end

---@param user LifeConfig|nil
function M.setup(user)
  local opts = vim.tbl_deep_extend("force", M.defaults, user or {})
  for k, v in pairs(opts) do
    opts[k] = expand(v)
  end
  M.options = opts
end

return M

