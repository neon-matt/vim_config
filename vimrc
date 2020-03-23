" load packages from ~/.vim/bundle/always/{}
execute pathogen#infect('bundle/always/{}')

" Load filetype plugins if they exist
autocmd FileType * if isdirectory('/home/matthew/.vim/bundle/' . &ft) | execute pathogen#infect('bundle/' . &ft. '/{}') | endif

" Setup mucomplete for basic use (more complex configuration/plugin integration for different file types are done
" in the ftplugin vim scripts)
set completeopt+=menuone,noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vim for general editing. Settings here are applied for all files 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set number relativenumber " turn on "hybrid" numbering mode
syntax on " turn on syntax highlighting
color monokai " use the monokai color scheme
set spell
set spelllang=en_us
" Play nice with lightline
set laststatus=2
set noshowmode
" Settings here should be reset by a ftplugin if available.


