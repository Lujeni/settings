return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  cmd = {"TSUpdateSync"},
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {"bash", "comment", "css", "dockerfile", "html", "htmldjango",
      "javascript", "jsdoc", "json", "lua", "luadoc", "luap", "make",
      "markdown", "markdown_inline", "python", "query", "regex",
      "requirements", "rust", "sql", "terraform", "tsx", "typescript",
      "vim", "vimdoc", "vue", "yaml"},
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      auto_install = true,
    })
  end
}
