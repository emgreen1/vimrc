syntax on


set autoindent
set smartindent
set expandtab tabstop=4 shiftwidth=4 smarttab softtabstop=4
set noerrorbells
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

"Turn on backup option
set backup

"Where to store backups
set backupdir=~/.vim/backups//

"Make backup before overwriting the current buffer
set writebackup

"Overwrite the original backup file
set backupcopy=yes

"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
