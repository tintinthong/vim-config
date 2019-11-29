
" Try to use these things for comments
" Basic Settings, FileType-specific settings, Mappings, and Status Lined

" NEOVIM CONFIG ---------------------- {{{
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
" }}}

" PLUGINSTALL ---------------------- {{{
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim' 
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'takac/vim-hardtime'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ElmCast/elm-vim'
call plug#end() 
" }}}
"
" CUSTOM CONFIGS---------------------- {{{
"
let mapleader = ','
set relativenumber
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>w :w<cr>

" Removing syntax highlighting
nnoremap <leader>/ :noh<cr>

"Resize Window
nnoremap <C-w>+ :vertical resize +5<cr>
nnoremap <C-w>- :vertical resize -5<cr>


" Adding statusline in Filetype
set statusline=%f\ -\ FileType:\ %y

onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>

"Manipulate blank lines while remaining in Normal mode
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
" shift h and l are already in newovim configurations
" }}}
"
"

" TABS AND INDENTS{{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" VIMSCRIPT FILE SETTINGS --------------------- {{{
" first time: setlocal foldmethod=marker
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" PLUGIN CONFIG---------------------- {{{

"Gruvbox
colorscheme gruvbox

"NerdCommenter
vmap ++ <plug>nerdcommentertoggle
nmap ++ <plug>NERDCommenterToggle

"Vim Hardtime
"let g:hardtime_default_on = 1
"let g:list_of_disabled_keys = ["<bs>", "<LEFT>","<RIGHT>"]

"FZF
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

nnoremap <leader>p :FZF<cr>
nnoremap <leader>h :Hist<cr>
nnoremap <leader>f :Ag<cr> 

"Easy Motion 

"Only using single leader key
"map <Leader> <Plug>(easymotion-prefix)


"Nerd Tree

map <C-b> :NERDTreeToggle<CR>

"Open NERDTree automatically
autocmd VimEnter * NERDTree

"Shift cursor to last accessed window
autocmd VimEnter * wincmd p

"Closes file when last window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}
