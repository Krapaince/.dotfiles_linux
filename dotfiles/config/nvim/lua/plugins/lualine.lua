-- {{@@ header() @@}}

return function()
  local colors = require('highlights').colors

  local mode_highlight = function(highlight)
    return {
      a = { bg = highlight, fg = colors.eclipse, gui = 'bold' },
      b = { bg = colors.eclipse, fg = highlight },
      c = { bg = colors.nero, fg = colors.light_grey },
    }
  end

  local theme = {
    normal = mode_highlight(colors.picton_blue),
    insert = mode_highlight(colors.straw),
    visual = mode_highlight(colors.glabe_green),
  }

  local diagnostics = {
    'diagnostics',
    sources = { 'nvim_diagnostic' },
    color_error = colors.sunset_orange,
    color_warn = colors.equator,
    color_info = colors.mountain_meadow,
    color_hint = colors.light_grey,
    symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
  }

  require('lualine').setup({
    status_line = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', diagnostics },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat' },
      lualine_y = { 'filetype' },
      lualine_z = { 'location', 'progress' },
    },

    options = {
      theme = theme,
      disabled_filetypes = { 'packer', 'neo-tree' },
      ignore_focus = { 'neo-tree' },
      globalstatus = true,
    },
    extensions = {},
  })
end
