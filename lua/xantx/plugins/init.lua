return {
  {
    'wakatime/vim-wakatime',
    event = "VeryLazy",
  },
  {'christoomey/vim-tmux-navigator', event = "VeryLazy"},
  {
    'windwp/nvim-autopairs',
    event = 'BufReadPost',
    opts = {
      enable_check_bracket_line = false,
      ignored_next_char = '[%w%.]',
      fast_wrap = {},
    },
  },
  'windwp/nvim-ts-autotag',
  {
      "kylechui/nvim-surround",
      version = "*",
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({})
      end
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = {
          normal_hl = "NormalNC",      -- Base highlight group in the notification window
          winblend = 0,             -- Background color opacity in the notification window
          border = "none",            -- Border around the notification window
          align = "bottom",           -- How to align the notification window
        },
      },
      integration = {
        ["nvim-tree"] = {
          enable = true,              -- Integrate with nvim-tree/nvim-tree.lua (if installed)
        },
      },
    },
  }
}
