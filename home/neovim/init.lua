vim.o.termguicolors = true
vim.cmd('colorscheme dracula')

require('lualine').setup()
require("fzf-lua").setup({
    "fzf-vim",
    winopts = { border = "none" }
})
vim.keymap.set("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

vim.g.mapleader = "\\"

vim.opt.swapfile = false
vim.opt.backup = false

local lsp = require('lsp-zero')
lsp.preset('recommended')

local format = require('lsp-format')
format.setup {
    sync = true,
}

lsp.on_attach(function(client, bufnr)
    format.on_attach(client, bufnr)
    -- see :help lsp-zero-keybindings
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup_servers({ 'lua_ls', 'clangd' })
