call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'
Plug 'zbirenbaum/copilot.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
Plug 'https://github.com/github/copilot.vim.git'
Plug 'https://github.com/nvim-neo-tree/neo-tree.nvim.git'
Plug 'preservim/nerdtree'
Plug 'sakura-theme/vim'

call plug#end()

" Save modified buffer during idle after 'updatetime' has elapsed (default 4 sec)
autocmd CursorHoldI,CursorHold * silent! update

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


nnoremap <S-D>: NERDTree<CR>
nnoremap <S-Left> <C-w>h
nnoremap <S-Right> <C-w>l
nnoremap <S-Up> <C-w>k
nnoremap <S-Down> <C-w>j
nnoremap <D-Right> $
nnoremap <D-Left> 0
nnoremap <C-Left> b
nnoremap <C-Right> w
nnoremap <C-Delete> dw

set listchars=

colorscheme sakura

let $PATH = '/Users/matti/.nvm/versions/node/v20.14.0/bin/node' . ':' . $PATH

lua << EOF
require("CopilotChat").setup {
debug = true, -- Enable debugging
-- See Configuration section for rest
}
EOF
