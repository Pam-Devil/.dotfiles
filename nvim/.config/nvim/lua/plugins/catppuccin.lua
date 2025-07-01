return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup ({
            custom_highlights = function(colors)
                return {
                    LineNr = { fg = colors.white },
                }
            end,
            highlight_overrides = {
                all = function(colors)
                    return {
                        LineNr = { fg = colors.white },
                    }
                end,
            }
        })
        vim.cmd.colorscheme "catppuccin"
        vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    end
}
