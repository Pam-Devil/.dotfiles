return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"c","lua","vim","vimdoc","html","css","go","rust","python","javascript","typescript"},
            sync_install = false,
            highlights = {enable = true},
            indent = { enable = true },
        })
    end
}
