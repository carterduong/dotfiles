" Display
" ---------------
syntax on
syntax enable

" Indentation
" ---------------
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Line Numbers
" ---------------
set number relativenumber
set autoindent
set linebreak

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

