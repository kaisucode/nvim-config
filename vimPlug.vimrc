
call plug#begin()
	Plug 'ap/vim-css-color'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'itchyny/vim-gitbranch'
	Plug 'Valloric/YouCompleteMe'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-scripts/auto-pairs-gentle'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'numkil/ag.nvim'
	Plug 'mgee/lightline-bufferline'
	Plug 'matze/vim-move'
	Plug 'floobits/floobits-neovim'
	Plug 'itchyny/lightline.vim', {'commit': '78c43c1'}
	Plug 'JamshedVesuna/vim-markdown-preview'
	Plug 'tell-k/vim-autopep8'
	Plug 'junegunn/goyo.vim'
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
	Plug 'kaisucode/vim-substitution'
call plug#end()


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost vimPlug.vimrc source init.vim
augroup END

