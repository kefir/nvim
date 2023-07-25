require('neogen').setup {
    languages = {
        ['cpp.doxygen'] = require('neogen.configurations.cpp'),
        ['c.doxygen'] = require('neogen.configurations.c')
    },
    vim.keymap.set("n", "<leader>nc", function ()
        require('neogen').generate()
    end)
}
