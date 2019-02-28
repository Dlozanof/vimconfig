call plug#begin('/home/diego/.vim/plugged')

Plug 'calviken/vim-gdscript3'

Plug 'chriskempson/base16-vim'

Plug 'ervandew/supertab'

Plug 'scrooloose/nerdtree'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'jnurmine/Zenburn'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
nnoremap f :Files <CR>
nnoremap b :Buffers <CR>
nnoremap <F5> :make <CR>
:color zenburn
let python_highlight_all=1
syntax on
let g:airline_powerline_fonts = 1

set tabstop=4
set shiftwidth=4

set tags=tags

"""LATEX
autocmd FileType tex map <f9> :!./Makefile<ENTER>
" contenido de Makefile:
" clear
" pdflatex -halt-on-error main.tex | grep '^!.*' -A200 --color=always
" if [[ $? ]]; then
" 	exit 0
" fi

autocmd FileType tex inoremap  ,bf \textbf{}<Esc>T{i
autocmd FileType tex inoremap  ,it \textit{}<Esc>T{i
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>

" Relative line numbers
set number relativenumber
set nu rnu
