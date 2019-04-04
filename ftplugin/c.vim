
setlocal tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
imap <F5> <Esc>:w<CR>:!gcc % -o %<.exe && ./%<.exe<CR>
noremap <F5> <Esc>:w<CR>:!gcc % -o %<.exe && ./%<.exe<CR>
imap <Leader>r <Esc>:w<CR>:!gcc % -o %<.exe && ./%<.exe<CR>
noremap <Leader>r <Esc>:w<CR>:!gcc % -o %<.exe && ./%<.exe<CR>

