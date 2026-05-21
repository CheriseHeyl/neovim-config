require("config.keybinds")
require("config.globals")
require("config.lazy")

require("config.lualine")
require("config.bufferline")
require("config.neo-tree")
require("config.autocmd")
require("config.conform")
require("config.blink")

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pyright", "tsserver" },
})

require("mason-lspconfig").setup {
    function(server_name)
        require("lspconfig")[server_name].setup {}
    end,
}
