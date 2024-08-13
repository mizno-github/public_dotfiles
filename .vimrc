set number
inoremap jj <esc>
nnoremap ff <C-w>

# tab関連を,と何かでできるようにする
let mapleader=","
noremap <leader>n :tabnew<CR>
noremap <leader>c :tabclose<CR>
noremap <leader>L gt
noremap <leader>H gT

# tab保管時に候補を並べてくれる
set wildmenu

# viとの互換性をなくしてvim本来のパワーが出るようにする
set nocompatible

# タブサイズ
set tabstop=2
