execute pathogen#interpose('/bundle/cpp/clang-complete')

set noinfercase
set completeopt-=preview
set completeopt+=menuone,noselect
" The following section allows for autocompletion fo functions and the stdlib
" using clang_completions with mucomplete.
let g:clang_library_path = '/usr/lib/llvm-9/lib'
let g:clang_user_options = '-std=c++11'
let g:clang_complete_auto = 1
let g:mucomplete#enable_auto_at_startup = 1

echo 'file loaded my duder'

