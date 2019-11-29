# vim-config

## Vanilla Vim 

- <C-h> In insert mode, use to remove last character.
- <C-w> In insert mode, use to remove last word.
- <C-u> In insert mode, use to remove last line.

- daw Delete a word (plus trailing whitespace)
- das Delete a sentence 
- dis Delete an inner sentence 

- ; Move to next f
- , Move to previous f
- F Search backwards

- dab Delete ()
- daB Delete {}
- dat Delete html tag
- cit Change contents of html tag
- cf<character> Replace up until character
- <Shift-c> Replaces till end of line

- ge Moves E but backwards
- gi Puts insert mode at last place in insert mode

- <Shift-j> Bring lower line up (make inline)
- <Shift-k> Bring upper line up (make inline)

- :noh Remove last search highlighting

## What you must learn?
[] Using regex with search 
[] Automatic opening of windows
[] Using terminals

## Plugin Vim

- NerdCommenter

<Shift>++

- Easy Motion 

<Leader><Leader>w

- FZF

:FZF
:Hist

<Ctl-ijkl>
<Ctrl-t>
<Ctrl-x>
<Ctrl-v>

- Vim Surround 

cs<character><character> e.g. cs"'
ysiw<character> e.g. ysiw]
yss<characted> e.g. yssb yss)

## Some Vim Concepts


## Advanced Tips
- Never move your right hand away from ijkl. 
- Never context switch (1 reference 1 control).
- Use c not d.
- Learn to search and replace.
- Separate Mac controls with Vim controls.
- Use VS Code for syntax highlighting.
- Persist in Normal Mode.
- Do not use ijkl too much.
- Do not use Backspace key.
- Learn Vim first.  

## Leverage Points 
- Get used to adding new windows 
- Get used to NOT using the mouse
- Get used to finding files (In your current directory, in other directories)
- Get used to copy and pasting stuff (in and out of your browser) 
- Use tmux
- Get used to adding and customising your vimrc
- Get used to deleting in insert mode)

## Things to do 
- Make a good enough .vimrc to be used on someoneelses computer
- Make a good enought vs code json file to be used on someonelses computer

## Useful Links 
-[Neovim vs Vim](https://vi.stackexchange.com/questions/34/what-is-neovim-how-is-it-different-from-vim-and-why-should-i-care) 
- [Useful Tips in Vim](https://www.barbarianmeetscoding.com/blog/2019/02/08/boost-your-coding-fu-with-vscode-and-vim) 
- [Neovim Skip Comment](https://vi.stackexchange.com/questions/19663/neovim-single-line-comments-also-format-the-next-line)
