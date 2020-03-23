" UNSET DEFAULT SETTINGS
set nospell

" Jedi-Vim Preferences
let g:jedi#popup_on_dot = 1 " this could also be true, but I'm trying this for now
let g:jedi#popup_select_first = 0 " should prevent extraneous autocompletions

" Mucomplete Preferences
set completeopt=preview,menuone,noselect

" Set pythonic spacing / indentation style
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" follow PEP80 line-length guidelines
set colorcolumn=80

