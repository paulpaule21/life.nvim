local M = {}

function M.current_week_path(base)
  local year = os.date("%Y")
  local week = os.date("%V")
  return string.format("%s/weekly/%s-W%s.org", base, year, week)
end

return M

