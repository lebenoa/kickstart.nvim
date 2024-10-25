return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function()
            vim.g.barbar_auto_setup = false
            -- local opts = { noremap = true, silent = true }

            local function opts(desc)
                return { desc = desc, noremap = true, silent = true }
            end

            vim.keymap.set('n', 'H', '<Cmd>BufferPrevious<CR>', opts 'Previous Buffer')
            vim.keymap.set('n', 'L', '<Cmd>BufferNext<CR>', opts 'Next Buffer')
            vim.keymap.set('n', '<leader>bd', '<Cmd>BufferClose<CR>', opts 'Close Current Buffer')
            vim.keymap.set('n', '<leader>bo', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts 'Close Other Buffer')
        end,
        opts = {
            -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
            -- animation = true,
            -- insert_at_start = true,
            -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
}
