return {
    'nvim-mini/mini.nvim',
    config = function()
        require('mini.bufremove').setup()
        require('mini.surround').setup()
        require('mini.pairs').setup()
    end
}
