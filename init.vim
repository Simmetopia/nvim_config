call plug#begin('~/.vim/plugged')
"######### VIM CMAKE#########  
Plug 'reasonml-editor/vim-reason-plus'
Plug 'lervag/vimtex'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-dispatch'
Plug 'vim-syntastic/syntastic'
Plug 'OmniSharp/omnisharp-vim'
Plug 'rust-lang/rust.vim'
Plug 'zchee/deoplete-jedi'
 " For Denite features
Plug 'Shougo/denite.nvim'
" Simple note in vim
" nice to have
" REQUIRED: Add a syntax file. YATS is the best
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'ruanyl/vim-sort-imports'
Plug 'renke/import-sort'
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Automatically close parenthesis, etc
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
call plug#end()
"Dependencies

call deoplete#custom#var('omni', 'input_patterns', {
          \ 'tex': g:vimtex#re#deoplete
          \})
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'
"Enaable deoplete
function DeopleteEnable()
	call deoplete#enable() 
endfunction
"Disable deoplete
function DeopleteDisable()
	call deoplete#disable() 
endfunction
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:LanguageClient_serverCommands = {
    \ 'reason': ['~/.config/nvim/reason-language-server/reason-language-server.exe'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
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

"FZF options
" This is the default extra key bindings
let g:zf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }



" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'down': '~50%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
"il_theme_style = 'default' | 'palenight' | 'dark'enable autocomplete
let g:deoplete#enable_at_startup = 1
let mapleader=","
"#################################################
" TypeScript Language client keybindings
"#################################################

nnoremap <leader>ti  :TSImport<CR>
nnoremap <leader>gd  :TSDef<CR>
nnoremap <leader><F2>  :TSRename<CR>
nnoremap gh  :TSType<CR>
nnoremap <leader>si  :TsSortImports<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>
nnoremap <leader>f :Files<cr>
nnoremap <leader>gf :GFiles<cr>
"#################################################
" yank keybindings
"#################################################
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy


" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P<Paste>

nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<CR>
" close preview window on leaving the insert mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Personilzation here
set number
set relativenumber
set splitbelow
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
let g:syntastic_cs_checkers = ['code_checker']
let g:rustfmt_autosave = 1

	
"netrw basic setup
let g:netrw_banner = 0
set noswapfile


let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
