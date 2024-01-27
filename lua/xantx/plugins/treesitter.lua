return  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      init = function()
        require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
        load_textobjects = true
      end,
    },
  },
  opts = {
    ensure_installed = {"javascript","typescript" ,"lua", "rust", "c", "cpp", "vim" , "sql", "markdown", "markdown_inline"},
    sync_install = false,
    auto_install = false,
    autotag = {
      enable = true,
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    ident = {
      enable = true
    },
  },
  config = function (_, opts)
     require("nvim-treesitter.configs").setup(opts)
  end
}
