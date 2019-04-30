"Plug

source ~/.config/nvim/plugins.vim
let g:deoplete#enable_at_startup = 1
let mapleader=","
"Dependencies
source ~/.config/nvim/nerdtree.vimrc
source ~/.config/nvim/ale.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/keybinds.vim
source ~/.config/nvim/utils.vim
source ~/.config/nvim/typescript.vimrc
"Enaable deoplete
source ~/.config/nvim/latex.vim
let g:LanguageClient_serverCommands = {
    \ 'reason': ['/home/simon/.config/nvim/reason-language-server/reason-language-server.exe'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

"il_theme_style = 'default' | 'palenight' | 'dark'enable autocomplete
colorscheme gruvbox
set background=light   " Setting light mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Personilzation here
set number
set relativenumber
set splitbelow
set smartcase
set smarttab



let g:rustfmt_autosave = 1

	
"netrw basic setup
let g:netrw_banner = 0
set noswapfile


    let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   recently opened']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
let g:startify_bookmarks = [{'c': '~/.config/nvim/init.vim'},{'bhw':'~/brandheroes/brandheroes-webapp-v2'},{'bha':'~/brandheroes/brandheroesapp'},{'bhb':'~/brandheroes/brandheroes-backend-gql'},{'ebw':'~/typescript_code/ergobasen-v2'},{'ebb':'~/typescript_code/ergobasen-server'},{'i3':'~/.config/i3/config'}]
let g:startify_files_number = 8
let g:startify_session_persistence = 0

let g:startify_session_autoload = 1

let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

let g:ascii = [
\ '   _____ _                      _          __    ___________________   ______  ___    ______  __',
\ '  / ___/(_)___ ___  ____  ____ ( )_____   / /   / ____/ ____/ ____/ | / / __ \/   |  / __ \ \/ /',
\ '  \__ \/ / __ `__ \/ __ \/ __ \|// ___/  / /   / __/ / / __/ __/ /  |/ / / / / /| | / /_/ /\  / ',
\ ' ___/ / / / / / / / /_/ / / / / (__  )  / /___/ /___/ /_/ / /___/ /|  / /_/ / ___ |/ _, _/ / /  ',
\ '/____/_/_/ /_/ /_/\____/_/ /_/ /____/  /_____/_____/\____/_____/_/ |_/_____/_/  |_/_/ |_| /_/   ',
\ '                                                                                                ',
\ '',
\ '           _    ________  ___   __________  _   __________________',
\ '          | |  / /  _/  |/  /  / ____/ __ \/ | / / ____/  _/ ____/',
\ '          | | / // // /|_/ /  / /   / / / /  |/ / /_   / // / __  ',
\ '          | |/ // // /  / /  / /___/ /_/ / /|  / __/ _/ // /_/ /  ',
\ '          |___/___/_/  /_/   \____/\____/_/ |_/_/   /___/\____/   ',
\]

let g:startify_custom_header =
          \ 'map(g:ascii + startify#fortune#boxed(), "\"   \".v:val")'
"" Exit terminal mode with ESC
tnoremap <Esc> <C-\><C-n>
