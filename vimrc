"               __  __ _                          __         _
"   __ _  ___ _/ /_/ /( /___   ____    _____ ___ / /_  _  __(_)_ _  ________
"  /  ' \/ _ `/ __/ __//(_-<  (_-< |/|/ / -_) -_) __/ | |/ / /  ' \/ __/ __/
" /_/_/_/\_,_/\__/\__/ /___/ /___/__,__/\__/\__/\__/  |___/_/_/_/_/_/  \__/
" 
" Lovingly crafted to be fast, stylish, and functional.

" load packages from ~/.vim/bundle/always/{}
execute pathogen#infect('bundle/always/{}')

" if there's a git repo present, load fugitive
" if isdirectory('')

" anything sensible here will do.
let mapleader=","

" FT-SPECIFIC CONFIG
" load filetype plugins if they exist
autocmd FileType * if isdirectory('/home/matthew/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

filetype on
filetype plugin on
filetype indent on

" DISPLAY SETTINGS
set termguicolors 			" true color support

" this is a weird fix that allows for true color inside tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" make sure that the appropriate colorscheme is symlinked at
" ~/.vim/bundle/colorscheme/__active
colorscheme gruvbox
set background=dark 			" gives us the dark gruvbox theme

" cursor view configuration
set number relativenumber 		" turn on "hybrid" numbering mode
set cursorline 				" turn on cursorline highlighting
set colorcolumn=80 			" make our code readable anywhere
syntax on 				" turn on syntax highlighting

" VIMRC FANCINESS
" map ,vimrc to edit this file. 
map <leader>vimrc :tabe ~/.config/vim/vimrc<cr>

" auto-source the vimrc on write.
autocmd bufwritepost vimrc source $MYVIMRC

" SPELLING AND HUMAN LANGUAGE
set spell 				" turn on spell checking
set spelllang=en_us 			" set the spell language

" PACKAGE-SPECIFIC CONFIG
" lightline
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }
" vimwiki
let g:vimwiki_list = [{'path': '~/documents/vimwiki/',
		     \ 'syntax': 'markdown',
		     \ 'ext': '.wiki'}]

let g:vimwiki_global_ext = 0

