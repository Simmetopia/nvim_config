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

nnoremap <leader>l :PrettierAsync<CR>
" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P<Paste>

nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<CR>
"#################################################
" Fugitive keybindings
"#################################################
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>w :Gwrite<CR>
nnoremap <leader>gu :Gfetch<CR>
