" load syntax-specific packages via pathogen
execute pathogen#infect('/bundle/cpp/{}')

" general editing tweaks
" set tabs to be spaces and for the tabstop to be four spaces wide
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Set a divider at column 80
set colorcolumn=80

" package configuration
" clang-complete
let g:clang_library_path = '/usr/lib/llvm-10/lib'
let g:clang_user_options = '-std=c++17'
let g:clang_complete_auto = 1
 
" μcomplete
set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect

echo 'file loaded my duder'

