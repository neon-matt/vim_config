
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim for general editing. Settings here are applied for all files 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load packages from ~/.vim/bundle/always/{}
execute pathogen#infect('bundle/always/{}')

" Settings here should be reset by a ftplugin if available.
filetype plugin indent on
set number relativenumber " turn on "hybrid" numbering mode
syntax on " turn on syntax highlighting
color monokai " use the monokai color scheme
set spell
set spelllang=en_us
" Play nice with lightline
set laststatus=2
set noshowmode

" Load filetype plugins if they exist
autocmd FileType * if isdirectory('/home/matthew/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

