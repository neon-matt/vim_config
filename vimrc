
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim for general editing. Settings here are applied for all files 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" anything sensible here will do.
let mapleader=","

" VIMRC FANCINESS
" map ,vimrc to edit this file. 
map <leader>vimrc :tabe ~/.config/vim/vimrc<cr>

" auto-source the vimrc on write.
autocmd bufwritepost vimrc source $MYVIMRC

" load packages from ~/.vim/bundle/always/{}
execute pathogen#infect('bundle/always/{}')

" FT-SPECIFIC CONFIG
" load filetype plugins if they exist
autocmd FileType * if isdirectory('/home/matthew/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

filetype on
filetype plugin on
filetype indent on

" DISPLAY AND SPELLING
set termguicolors

" make sure that the appropriate colorscheme is symlinked at
" ~/.vim/bundle/colorscheme/__active
colorscheme gruvbox
set background=dark 		" gives us the dark gruvbox theme

" cursor view configuration
set number relativenumber 	" turn on "hybrid" numbering mode
set cursorline 			" turn on cursorline highlighting
syntax on 			" turn on syntax highlighting

" spelling
set spell 		" turn on spell checking
set spelllang=en_us 	" set the spell language

" PACKAGE-SPECIFIC
" lightline
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }

