
"NEOVIM CONFIG

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
set fo-=r fo -=o "Removes a comment format carrying on to next line 


"Install Plugins
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
call plug#end() 

"CUSTOM CONFIGS
set relativenumber

"Manipulate blank lines while remaining in Normal mode
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

"PLUGIN CONFIG

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

"Easy Motion 

"Only using single leader key
map <Leader> <Plug>(easymotion-prefix)


"Nerd Tree

map <C-n> :NERDTreeToggle<CR>

"Open NERDTree automatically
autocmd VimEnter * NERDTree

"Shift cursor to last accessed window
autocmd VimEnter * wincmd p

"Closes file when last window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
