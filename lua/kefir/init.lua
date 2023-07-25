require("kefir.remap")
require("kefir.set")

-- Clang-format
vim.api.nvim_create_user_command('CFormat',
  'silent !clang-format --style=WebKit -i % && w',
  { nargs=0 }
)
