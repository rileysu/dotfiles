call plug#begin('~/.local/share/nvim/plugged')

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'plasticboy/vim-markdown'

call plug#end()

"<==Configs==>

"Line Numbers
set relativenumber

"Colors
highlight Pmenu ctermfg=blue ctermbg=black guibg=black

"Folding
set foldmethod=syntax
set foldnestmax=1

"<==Mappings==>
noremap <C-P> :Files<Return>
noremap <C-I> :Rg<Return>
