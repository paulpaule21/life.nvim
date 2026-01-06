local M = {}

function M.ensure_dir(path)
  vim.fn.mkdir(path, "p")
end

function M.edit_file(path)
  if vim.bo.modified then
    local choice = vim.fn.confirm(
      "Current buffer has unsaved changes. Save?",
      "&Yes\n&No\n&Cancel",
      1
    )

    if choice == 1 then
      vim.cmd.write()
    elseif choice == 2 then
      -- continue without saving
    else
      return -- cancel command
    end
  end

  vim.cmd.edit(vim.fn.fnameescape(path))
end


function M.write_lines(lines)
  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
end

function M.move_cursor(pos)
  if pos then
    vim.api.nvim_win_set_cursor(0, pos)
  end
end

function M.timestamp()
  return os.date("%Y%m%d%H%M%S")
end

return M

