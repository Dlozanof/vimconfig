"" Plugins
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
Plug 'majutsushi/tagbar'
call plug#end()

"" Tuning para hacerme el xulo
:color zenburn
let g:airline_powerline_fonts = 1


"" General
" fuzzy finder -- ULTRA  util
nnoremap f :Files <CR>
nnoremap b :Buffers <CR>

" Formato general
set tabstop=4
set shiftwidth=4

" Relative line numbers
set number relativenumber
set nu rnu

"Placeholders, ctrl j salta al siguiente y lo borra, https://vim.fandom.com/wiki/Simple_placeholders
inoremap <c-j> <Esc>/<++><CR><Esc>cf>


"" Desarrollo C/C++
" Tagbar
nmap <F8> :TagbarToggle<CR>

"NerdTree --casi no lo uso--
map <C-n> :NERDTreeToggle<CR>

" Tags
set tags=tags
noremap ts :ts<CR>
noremap tl :Tags<Enter>
noremap tt <C-t>
noremap tg <C-]>

" Integracion con make
nnoremap <F5> :make <CR>


"" Desarollo para python
let python_highlight_all=1
syntax on


"""LATEX
autocmd FileType tex map <f9> :!./Makefile<ENTER> 
" contenido de Makefile:
" clear
" pdflatex -halt-on-error main.tex | grep '^!.*' -A200 --color=always
" if [[ $? ]]; then
" 	exit 0
" fi

" Shortcuts para latex complejos
inoremap ,fig \begin{figure}[h]<ENTER>\centering<ENTER>\includegraphics[width=<++>\columnwidth]{<++>}<ENTER>\caption{<++>}<ENTER>\label{<++>}<ENTER>\end{figure}<Esc>/<++><CR><Esc>cf>

" Formato
autocmd FileType tex inoremap  ,bf \textbf{}<Esc>T{i
autocmd FileType tex inoremap  ,it \textit{}<Esc>T{i
