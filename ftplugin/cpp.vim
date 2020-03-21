" load syntax-specific packages via pathogen
" execute pathogen#interpose('/bundle/cpp/clang-complete/')

" Set width to 80
set colorcolumn=80

" Clang-complete settings
let g:clang_library_path = '/usr/lib/llvm-9/lib'
let g:clang_user_options = '-std=c++11'
let g:clang_complete_auto = 1

" Use spaces instead of tabs, and cast tab
" as 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Completions / mucomplete settings
set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect

echo 'file loaded my duder'

