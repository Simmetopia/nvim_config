
call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"######### VIM CMAKE#########  
" Plug 'vhdirk/vim-cmake'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'lervag/vimtex'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-dispatch'
Plug 'vim-syntastic/syntastic'
Plug 'OmniSharp/omnisharp-vim'
Plug 'rust-lang/rust.vim'
Plug 'zchee/deoplete-jedi'
 " For Denite features
Plug 'Shougo/denite.nvim'
" Simple note in vim
" REQUIRED: Add a syntax file. YATS is the best
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kaicataldo/material.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'ruanyl/vim-sort-imports'
Plug 'renke/import-sort'
" Track the engine.
Plug 'SirVer/ultisnips'
Plug 'jparise/vim-graphql'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Automatically close parenthesis, etc

Plug 'scrooloose/nerdtree'
call plug#end()
