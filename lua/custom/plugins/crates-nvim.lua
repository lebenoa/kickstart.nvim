return {
    'saecki/crates.nvim',
    tag = 'stable',
    event = { 'BufRead Cargo.toml' },
    config = function()
        local crates = require 'crates'

        vim.keymap.set('n', '<leader>cf', crates.show_features_popup, {
            desc = 'Show Features Popup',
            silent = true,
        })

        crates.setup {
            completion = {
                cmp = {
                    enabled = true,
                },
                crates = {
                    enabled = true,
                    max_results = 8,
                    min_chars = 2,
                },
            },
            lsp = {
                enabled = true,
                actions = true,
                completion = true,
                hover = true,
            },
        }
    end,
}
