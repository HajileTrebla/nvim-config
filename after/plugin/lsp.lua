--lsp zero config
local lsp = require('lsp-zero')

local lspconfig = require('lspconfig')

lsp.preset('recommended')

lsp.ensure_installed({
   'tsserver',
   'eslint',
   'lua_ls',
   'rust_analyzer',
   'emmet_ls',
   'pyright',
   'clangd',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
   mapping = cmp_mappings
})

lsp.setup()

vim.keymap.set('n', '<leader>gh', '<cmd>lua vim.lsp.buf.hover()<cr>')

--diagnostic message config

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

function HoverFixed()
    vim.api.nvim_command('set eventignore=CursorHold')
    vim.lsp.buf.hover()
    vim.api.nvim_command('autocmd CursorMoved <buffer> ++once set eventignore=""')
end

vim.keymap.set('n', '<leader>hg', "<cmd>lua HoverFixed()<CR>")

vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus = false})]]

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

local pid = vim.fn.getpid();
local omnisharp_bin = vim.fn.stdpath("data") .. "/mason/packages/omnisharp/libexec/OmniSharp.exe"
lspconfig['omnisharp'].setup{
    flags = lsp_flags,
    use_mono = true,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }
}

--lsp configs
require'lspconfig'.lua_ls.setup{
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

return {
  lsp = {
    config = {
      emmet_ls = {
        filetypes = {
          "astro",
          "css",
          "eruby",
          "html",
          "htmldjango",
          "javascriptreact",
          "less",
          "php",
          "pug",
          "sass",
          "scss",
          "svelte",
          "typescriptreact",
          "vue",
        },
      },
    },
  },
}
