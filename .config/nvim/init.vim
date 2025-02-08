set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

if (has("termguicolors"))
    set termguicolors
endif
set cursorline
"highlight Cursorline gui=bold guibg=NONE
colorscheme habamax

lua require'colorizer'.setup()

