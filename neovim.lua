return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#141414", -- Default background
                base01 = "#636363", -- Lighter background (status bars)
                base02 = "#141414", -- Selection background
                base03 = "#636363", -- Comments, invisibles
                base04 = "#cdd6f4", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#cdd6f4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#e71852", -- Variables, errors, red
                base09 = "#e71852", -- Integers, constants, orange
                base0A = "#eda912", -- Classes, types, yellow
                base0B = "#60cc57", -- Strings, green
                base0C = "#ffffff", -- Support, regex, cyan
                base0D = "#0a64f5", -- Functions, keywords, blue
                base0E = "#fbfbff", -- Keywords, storage, magenta
                base0F = "#eda912", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
