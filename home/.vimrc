syntax on 
set number
set showmode
set showcmd
set wildmenu
set incsearch
set cursorline
set laststatus=2
set confirm
set title
set noswapfile
set ignorecase " Ignora maíscula e minúscula na busca
set textwidth=81
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
source /home/wellington/.vim/colors/terroo-colors.vim

" Salvar no modo normal
":nmap <c-s> :w<CR>

" Sair no modo normal
":nmap <c-q> :q<CR>

" Salvar modo inserção
nnoremap <c-s> :w<cr>
inoremap <c-s> <c-o>:w<cr>

" Sair modo inserção
nnoremap <c-q> :q!<cr>
inoremap <c-q> <c-o>:q!<cr>

" Fechamento automátivo 
imap { {}<left>
imap ( ()<left>
imap [ []<left>

" Minimalist-AutoCompletePop-Plugin
set completeopt=menu,menuone,noinsert
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
    if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K' " last char
        \ && getline('.')[col('.') - 1] !~ '\K'

        call feedkeys("\<C-P>", 'n')
    end
endfun

