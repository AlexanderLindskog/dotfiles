vim.opt.suffixes:append(',')
vim.opt.suffixes:remove('.h')

vim.cmd([[colorscheme slate]])
vim.cmd([[hi Comment ctermfg=Yellow]])
vim.cmd([[hi link Whitespace Conceal]])

vim.o.cursorline=true
vim.o.number=true
vim.o.relativenumber=true

vim.o.expandtab=true
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.opt.listchars:append{trail='~'}
vim.o.list=true

vim.g.netrw_liststyle=3

vim.g.mapleader='<Space>'

vim.api.nvim_create_augroup("MyIndent", {})
vim.api.nvim_create_autocmd("FileType", {
  group = "MyIndent",
  pattern = "lua",
  command = "setlocal shiftwidth=2 softtabstop=2",
})


require("config.lazy")

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("vhdl_ls")
vim.keymap.set('n', '<leader>i', '<cmd>lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true })

