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
Plug 'MattesGroeger/vim-bookmarks'
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

" Bookmarks se guardan por directorio en lugar de ser globales
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_auto_close = 1

"Placeholders, ctrl j salta al siguiente y lo borra, https://vim.fandom.com/wiki/Simple_placeholders
inoremap <c-j> <Esc>/<++><CR><Esc>cf>

" Navegar por comentarios multilinea (Ctrl-O vuelve a modo normal por un solo comando
imap <down> <C-o>gj
imap <up> <C-o>gk
nmap <up> gk
nmap <down> gj

imap <end> <C-o>g$
imap <home> <C-o>g0
map <end> g$
map <home> g0




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
autocmd FileType tex map <f9> :w<CR> :!./Makefile<ENTER> 
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
autocmd FileType tex inoremap  ,st \section{}<Esc>T{i
autocmd FileType tex inoremap  ,sst \subsection{}<Esc>T{i
