-- Configure mini.files with improved window widths
return {
  "nvim-mini/mini.files",
  opts = {
    windows = {
      preview = true,
      -- Width of focused window (showing current directory)
      width_focus = 40,
      -- Width of preview window (showing file/directory under cursor)
      width_preview = 60,
    },
  },
}
