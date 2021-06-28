packloadall

" color settings
syntax on
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

" Prettier settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'false'

" NERDTree settings
nmap <Leader>n :NERDTreeToggle<CR>

set relativenumber
noremap <Leader>s :update<CR>
" no highlighting of search results
nnoremap <Leader><Space> :noh<return><esc>

" change cursor on insert 
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[1 q"
augroup END

" snippets
nmap <Leader>ff Go@font-face {<CR>font-family: ;<CR>font-weight: 400;<CR>font-style: normal;<CR>src: url('../assets/fonts/') format('truetype');<CR>}<Esc>4k$i''<Esc>
