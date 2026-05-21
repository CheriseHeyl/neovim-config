require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { { "prettierd", "prettier" } }, -- Use first available
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback", -- Use LSP if no dedicated formatter is found
    },
})
