set path+=**
set wildmenu

" Remove o banner do Explorer nativo
let g:netrw_banner=0

" Exibe numero das linhas
set number

" Destaca as buscas em todo o arquivo... parecia legal, mas atraplhou um pouco kkk
"set hlsearch

" Autocomplete pro php - Ctrl_x + Ctrl_o
set omnifunc=phpcomplete#CompletePHP

call plug#begin()

" Table mode muito bom! Usar o :TableModeToggle para usar. Dividir colunas com |, e linha com ||
Plug 'dhruvasagar/vim-table-mode'

" NERDtree bom file explorer. Nao me acostumei, preferi o :Tex do vim vannila
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" FZF top para busca Fuzzy. Localiza arquivos recursivamente por qualquer termo. Tipo o File Open (Ctrl_p) do VSCode
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autocomplete para PHP - Pendente, ainda não funcionou adequadamente
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'phpactor/ncm2-phpactor'

call plug#end()

" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=noinsert,menuone,noselect

