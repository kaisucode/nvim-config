
setlocal tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
" imap <F5> <Esc>:w<CR>:!g++ % -w -o %<.exe && ./%<.exe<CR>
" noremap <F5> <Esc>:w<CR>:!g++ % -o %<.exe && ./%<.exe<CR>
" imap <F6> <Esc>:w<CR>:!g++ --std=c++0x % -w -o %<.exe11 && ./%<.exe11<CR>
" noremap <F6> <Esc>:w<CR>:!g++ --std=c++0x % -w -o %<.exe11 && ./%<.exe11<CR>
" imap <Leader>r <Esc>:w<CR>:!g++ --std=c++0x % -w -o %<.exe11 && ./%<.exe11<CR>
" noremap <Leader>r <Esc>:w<CR>:!g++ --std=c++0x % -w -o %<.exe11 && ./%<.exe11<CR>

imap <F5> <Esc>:w<CR>:!g++ % -w && ./a.out<CR>
noremap <F5> <Esc>:w<CR>:!g++ % -w && ./a.out<CR>
imap <F6> <Esc>:w<CR>:!g++ --std=c++0x % -w -o a11.out && ./a11.out<CR>
noremap <F6> <Esc>:w<CR>:!g++ --std=c++0x % -w -o a11.out && ./a11.out<CR>
imap <Leader>r <Esc>:w<CR>:!g++ --std=c++0x % -w -o a11.out && ./a11.out<CR>
noremap <Leader>r <Esc>:w<CR>:!g++ --std=c++0x % -w -o a11.out && ./a11.out<CR>

