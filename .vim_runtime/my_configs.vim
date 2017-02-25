" for use with https://github.com/amix/vimrc
"
" """"""""""""""""""""""""""""""""
" " => CTRL-P
" " """"""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'

" open nerdtree if opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if only nerdtree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdtree on the left
let g:NERDTreeWinPos = "left"

" don't complain on wq if the syntax isn't perfect
let g:syntastic_check_on_wq = 0

" remove whitespace on save https://github.com/ntpeters/vim-better-whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave
