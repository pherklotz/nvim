return { {
  "doctorfree/cheatsheet.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lua/popup.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
  event = "VeryLazy",
  config = function()
    local ctactions = require("cheatsheet.telescope.actions")
    require("cheatsheet").setup({
      bundled_cheatsheets = {
        disabled = { "nerd-fonts" },
      },
      bundled_plugin_cheatsheets = {
        enabled = {
          "auto-session",
          "goto-preview",
          "octo.nvim",
          "telescope.nvim",
          "vim-easy-align",
          "vim-sandwich",
        },
        disabled = { "gitsigns" },
      },
      include_only_installed_plugins = false,
      telescope_mappings = {
        ["<CR>"] = require('cheatsheet.telescope.actions').select_or_fill_commandline,
        ["<A-CR>"] = require('cheatsheet.telescope.actions').select_or_execute,
        ["<C-Y>"] = require('cheatsheet.telescope.actions').copy_cheat_value,
        ["<C-E>"] = require('cheatsheet.telescope.actions').edit_user_cheatsheet,
      }
    })
    --    vim.keymap.set('n', '<leader>cs', ':Cheatsheet<CR>', { ["desc"] = "Opens the cheatsheet popup" })
  end,
  keys = {
    { '<leader>cs', ':Cheatsheet<CR>', desc = "Opens the cheatsheet popup" }
  },
} }
