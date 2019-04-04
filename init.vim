
set linebreak

"------------Indentation--------------"
" Default
set tabstop=2 softtabstop=0 noexpandtab shiftwidth=2

set cindent
set cinkeys-=0X^H#
set indentkeys-=0X^H#

" nnoremap p ]p
"Format pasted text automatically

syntax on


"------------Mappings--------------"
let mapleader = ','		"The default leader is '\', but ',' is better.

" noremap <leader>q :q<cr>

nnoremap ' `
vnoremap ' `
nnoremap ; :
vnoremap ; :
inoremap jf <esc>
vnoremap jf <esc>
"inoremap fj <esc>

nmap <CR> o<ESC>
nmap <space><space> :w<CR>

inoremap cz <Esc>uI
"Go to normal mode, undo, and go back to insert

nnoremap d "_d
vnoremap d "_d

inoremap <C-x> <Esc><S-v>xi
nnoremap <C-x> <S-v>x
vnoremap <C-x> x

"Select all
"If need to copy to clipboard, change to gg"+yG
map <C-a> <Esc>ggVG<CR>
imap <C-a> <Esc>ggVG<CR>

vnoremap <F9> "+yi<Esc>
vnoremap <A-c> "+yi<Esc>

set number			"Activate line numbers.
let g:LineNumbers = 1
nmap <F8> :echom ToggleNums()<CR>
function! ToggleNums()
	let temp = g:LineNumbers
	if temp == 1
		set nonumber
		let g:LineNumbers = 0
	else
		set number
		let g:LineNumbers = 1
	endif
	" execute "set showtabline=".newTabStatus
endfunction

" Highlight all occurences of entire word
nmap haw yaw/<C-r>"<CR>
" nmap <Leader>r :%s//

" Replace all occurences of entire word
nmap raw yaw/<C-r>"<CR>:%s//


"-------------Color schemes--------------"
"colorscheme blue"
" set background=dark
" hi Normal guibg=NONE ctermbg=NONE	
"Transparent background, no matter the color scheme"

colorscheme evening
" colorscheme diary
" colorscheme elflord
hi Normal guibg=NONE ctermbg=NONE	
hi LineNr ctermfg=141 ctermbg=NONE

"-------------Split management--------------"
set splitbelow
set splitright

nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

"-------------Search--------------"
set hlsearch
set incsearch
set showmatch
set ignorecase		" Make searching case insensitive
set smartcase		" ... unless the query has capital letters.

"Add highlight removal"
nmap <Leader><space> :nohlsearch<cr>

"-------------Tabs--------------"
" nmap <C-W> :tabclose<cr>
" nmap <C-T> :tabe<cr>

set showtabline=2
nmap <C-T> :echom SwapTab()<cr>
function! SwapTab()
	let TabStatus = &showtabline
	let newTabStatus = abs(TabStatus-2)
	execute "set showtabline=".newTabStatus
endfunction
" 0: never
" 1: only if there are at least two tab pages
" 2: always

"-------------Buffers--------------"
" Open new empty tab
nmap <Leader>t :enew<cr>

" Move to the next buffer
nmap <leader>f :bnext<CR>
nmap f<leader> :bnext<CR>

" Move to the previous buffer
nmap <leader>d :bprevious<CR>
nmap d<leader> :bprevious<CR>

" Close the current buffer and move to the previous one
nmap <leader>w :bp <BAR> bd #<CR>
nmap w<leader> :bp <BAR> bd #<CR>

" Be able to switch buffers without saving
set hidden


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
autocmd! bufwritepost init.vim source %

" augroup autosourcing
"   autocmd!
"   autocmd BufWritePost init.vim source %
" augroup END

source $HOME/.config/nvim/vimPlug.vimrc
source $HOME/.config/nvim/plugin-config.vimrc

