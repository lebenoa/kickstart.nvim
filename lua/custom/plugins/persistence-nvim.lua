return {
    -- Lua
    {
        'folke/persistence.nvim',
        event = 'BufReadPre', -- this will only start session saving when an actual file was opened
        opts = {
            need = 0,
        },
        keys = {
            {
                '<leader>ll',
                function()
                    require('persistence').load { last = true }
                end,
                desc = 'Load last session',
            },
        },
    },
}
