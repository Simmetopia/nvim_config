
call plug#begin('~/.vim/plugged')
Plug 'burner/vim-svelte'
Plug 'metakirby5/codi.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'mhinz/vim-startify'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
"######### VIM CMAKE#########  
Plug 'reasonml-editor/vim-reason-plus'
Plug 'lervag/vimtex'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-dispatch'
Plug 'w0rp/ale'
Plug 'OmniSharp/omnisharp-vim'
Plug 'rust-lang/rust.vim'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim'
" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'jparise/vim-graphql'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Automatically close parenthesis, etc
Plug 'scrooloose/nerdtree'
call plug#end()
