require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "css", "html", "php", "scss", "go", "java", "javascript", "typescript", "python", "rust", "c", "lua", "vim", }, 'blade',

  --ignore installation of parsers--
  ignore_install = { "help" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

--parser settings for adding blade to treesitter
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = {"src/parser.c"},
    branch = "main",
  },
  filetype = "blade"
}

-- Filetypes --
--vim.filetype.add({
--  pattern = {
--    ['.*%.blade%.php'] = 'blade',
--  },
--})

--local bladeGroup = vim.api.nvim_create_augroup("BladeFiltypeRelated", {})
--vim.api.nvim_create_autocmd('BufNewFile, BufRead',{
--                            pattern=".*%.blade%.php",
--                            command="set ft=blade",
--                            group = bladeGroup})


