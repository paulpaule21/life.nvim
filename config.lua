local M = {}

M.defaults = {
  leader = "<Leader>l",

  notes_dir = "~/.notes",
  roam_dir = "~/.notes/roam",
  journal_dir = "~/.notes/journal",
  tasks_dir = "~/.notes/tasks",
  reviews_dir = "~/.notes/reviews",

  enable_agenda_on_start = false,
}

function M.setup(user)
  M.options = vim.tbl_deep_extend("force", M.defaults, user or {})
end

return M

