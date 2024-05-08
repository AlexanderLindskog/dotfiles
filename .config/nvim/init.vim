set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set termguicolors
set cursorline
highlight Cursorline gui=bold guibg=NONE

lua require'colorizer'.setup()

