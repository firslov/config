" 基础改建
noremap s <nop>
nnoremap H 10h
nnoremap J 10j
nnoremap K 10k
nnoremap L 10l
map w :w<CR>
map q :q<CR>
map Q :qall!<CR>
nmap <LEADER>x xi
nmap <LEADER>o o<ESC>
map R :source %<CR>

" 打开vimrc
map <LEADER>rc :e ~/.config/nvim/init.vim<CR>
" 清除搜索标记
map <LEADER>/ :nohlsearch<CR>
" 快速查找'<++>'并替换插入
map <LEADER><LEADER> /<++><CR>:nohlsearch<CR>c4l

" 分屏改键
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
" 分屏切换
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l
map <LEADER>u <C-w>t<C-w>H
map <LEADER>U <C-w>t<C-w>K
" 分屏改大小
map <up> :res+5<CR>
map <down> :res-5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" 文件切换
map ≤ :bp<CR>
map ≥ :bn<CR>

" 标签操作
map tt :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

" ===
" === Terminal
" ===
" 在下方打开一个terminal并进入编辑
map <LEADER><CR> :set splitbelow<CR>:sp<CR>:term<CR>h
