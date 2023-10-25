"Plugin related matters

"Coc 
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
" inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm()
"                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <tab> pumvisible() ? coc#select_confirm() : "\<C-g>u\<tab>"

"settings for NERDTree
noremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1
set wildignore+=*.DS_Store,*.min.*



