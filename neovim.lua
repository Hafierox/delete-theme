return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#11141e",
                bg_dark = "#11141e",
                bg_highlight = "#7a829a",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f2f1fa",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#b2afe1",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#7a829a",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#aba8d7",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#e7e6f5",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#a19ece",
                -- green: Comments, strings, success states, git additions
                green = "#7f86b8",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#a9accb",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#7575aa",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#9895c7",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d1d0e8",
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
