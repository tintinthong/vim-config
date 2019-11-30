
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
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-fugitive'
Plug 'neovimhaskell/haskell-vim'
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
"= emulates the + sign
nnoremap <C-w>= :vertical resize +5<cr>
nnoremap <C-w>- :vertical resize -5<cr>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Go to next tab by direction
" This follows vimium paradigm
noremap <S-j> gT 
noremap <S-k> gt 

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" Adding statusline in Filetype
set statusline=%f\ -\ FileType:\ %y

"Moving lines up and down(Mac produces weird characters for Alt) 
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆  :m '>+1<CR>gv=gv
vnoremap ˚  :m '<-2<CR>gv=gv

" shift h and l are already in newovim configurations
" }}}
"

" Quickly insert an empty new line without entering insert mode
    nnoremap <leader>o o<Esc>
    nnoremap <leader>O O<Esc>

" Delete all whitespace in up to front of line
nnoremap <leader>z ma0d^`a

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

nnoremap <C-p> :FZF<cr>
nnoremap <C-h> :Hist<cr>
nnoremap <leader>f :Ag<cr> 

"Easy Motion 

"Only using single leader key
"map <Leader> <Plug>(easymotion-prefix)


"Nerd Tree

map <C-n> :NERDTreeToggle<CR>

"Open NERDTree automatically
autocmd VimEnter * NERDTree

"Shift cursor to last accessed window
autocmd VimEnter * wincmd p

"Closes file when last window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
" }}}
