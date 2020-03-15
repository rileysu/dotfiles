call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree'

Plug 'Shougo/deoplete.nvim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'plasticboy/vim-markdown'

call plug#end()

"<==Configs==>

"Line Numbers
set number

"NERDTree
:set mouse=a
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeMouseMode=3

function! OpenNerdTreeMoveBack()
	exe "NERDTree"
	exe "wincmd p"
endfunction

autocmd VimEnter * call OpenNerdTreeMoveBack() 

"Deoplete
let g:deoplete#enable_at_startup = 1

"Close all
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

"LanguageClient
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['/usr/bin/rls'],
    \ 'python': ['/usr/bin/pyls'],
    \ }

"<==Mappings==>

"NERDTree
