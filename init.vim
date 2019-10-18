"Plug

source ~/.config/nvim/plugins.vim
let mapleader=","
"Dependencies
source ~/.config/nvim/nerdtree.vimrc
source ~/.config/nvim/ale.vim
source ~/.config/nvim/coc_config.vim
source ~/.config/nvim/navigation.vim
source ~/.config/nvim/keybinds.vim
source ~/.config/nvim/utils.vim

colorscheme gruvbox
set background=dark   " Setting light mode
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Personilzation here
set number
set relativenumber
set splitbelow
set smartcase
set smarttab

" Set the shell to bash, since fish is too slow
set shell=/bin/bash

" Custom ALE linter signs
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_linters = {
  \ 'typescript': ['tslint','eslint'],
  \ }

let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.jsx = ['eslint']
let g:ale_fixers.typescript = ['prettier', 'eslint', 'tslint']
let g:ale_fix_on_save = 1
nmap <F8> <Plug>(ale_fix)
	
"netrw basic setup
let g:netrw_banner = 0
set noswapfile

" Startify types
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   recently opened']            },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]
" Insert new bookmarks here
" [keybind]:[location]
let g:startify_bookmarks = [{'c': '~/.config/nvim/init.vim'},{'i3':'~/.config/i3/config'}]
" Amount of recent files to remember
let g:startify_files_number = 8
" Should not persist a session automatic
let g:startify_session_persistence = 0
" However is a session was created manually, load that one
let g:startify_session_autoload = 1

let g:startify_change_to_dir = 0
" When opening a file in a VCS , make that folder the PWD
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
"
"" Exit terminal mode with ESC
tnoremap <Esc> <C-\><C-n>
