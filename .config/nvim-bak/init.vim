call plug#begin('~/.local/share/nvim/plugged')

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'

call plug#end()

"<==Configs==>

"Mouse
set mouse=a

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

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
