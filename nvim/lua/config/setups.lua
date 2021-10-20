require("transparent").setup({
  enable = true
})
require('nvim-autopairs').setup{}
require'colorizer'.setup()
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

