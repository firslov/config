" ===
" === nerdtree 文件系统
" ===
map <F5> :NERDTreeToggle<CR>
" let NERDTreeMapOpenSplit = ""
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa | endif

" ===
" === Undotree 历史版本
" ===
let g:undotree_DiffAutoOpen = 0
map <LEADER>b :UndotreeToggle<CR>

"" ===
"" === Startify
"" ===
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif
let g:startify_custom_header = []
