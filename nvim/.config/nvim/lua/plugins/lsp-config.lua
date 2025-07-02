return {
    {
        "mason-org/mason.nvim",
        config = function ()
            require("mason").setup()
        end
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            {"mason-org/mason.nvim", opts = {}},
            "neovim/nvim-lspconfig",
        },
        config = function ()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls","rust_analyzer","pyright","ts_ls","gopls"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
            })
            vim.lsp.enable("pyright")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ts_ls")
            vim.lsp.config("ts_ls",{
                cmd = {"typescript-language-server","--stdio"}
            })
            vim.lsp.enable('gopls')
            vim.lsp.config("lua_ls",{})
            vim.lsp.config("pyright",{})
            vim.keymap.set('n','K',vim.lsp.buf.hover, {})
            vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
            vim.keymap.set({'n','v'},'<leader>ga',vim.lsp.buf.code_action, {})
        end
    }
}
