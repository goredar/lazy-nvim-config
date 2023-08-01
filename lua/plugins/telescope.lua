local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      selection_caret = "❯ ",
      prompt_prefix = "❯ ",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      layout_config = {
        flex = {
          prompt_position = "top",
          flip_columns = 161,
        },
        horizontal = {
          prompt_position = "top",
          preview_cutoff = 0,
          preview_width = 0.6,
        },
        vertical = {
          mirror = false,
          preview_cutoff = 0,
          preview_height = 0.65,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<Esc>"] = actions.close,
        },
      },
    },
  },
}
