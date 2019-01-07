call plug#begin('~/.vim/plugged')

Plug 'reasonml-editor/vim-reason-plus'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" REQUIRED: Add a syntax file. YATS is the best
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
 " For async completion
Plug 'Shougo/deoplete.nvim'
" for python things
Plug 'zchee/deoplete-jedi'
 " For Denite features
Plug 'Shougo/denite.nvim'
" nice to have
"
" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'

Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'neomake/neomake'
Plug 'kaicataldo/material.vim'
call plug#end()

let g:LanguageClient_serverCommands = {
    \ 'reason': ['/home/simon/.config/nvim/reason-language-server/reason-language-server.exe'],
    \ }

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1


set background=dark
colorscheme material



"il_theme_style = 'default' | 'palenight' | 'dark'enable autocomplete
let g:deoplete#enable_at_startup = 1
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<CR>

" close preview window on leaving the insert mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Personilzation here
set number
set splitbelow


"netrw basic setup
let g:netrw_banner = 0
