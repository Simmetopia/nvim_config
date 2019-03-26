"Plug

source ~/.config/nvim/plugins.vim
"Dependencies
source ~/.config/nvim/nerdtree.vimrc
source ~/.config/nvim/typescript.vimrc
source ~/.config/nvim/utils.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/keybinds.vim
"Enaable deoplete
let g:LanguageClient_serverCommands = {
    \ 'reason': ['~/.config/nvim/reason-language-server/reason-language-server.exe'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

"il_theme_style = 'default' | 'palenight' | 'dark'enable autocomplete
let g:deoplete#enable_at_startup = 1
let mapleader=","

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
