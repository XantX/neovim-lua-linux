return {
  {
    'wakatime/vim-wakatime',
    event = "VeryLazy",
  },
  {'christoomey/vim-tmux-navigator', event = "VeryLazy"},
  'kyazdani42/nvim-web-devicons',
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
}
