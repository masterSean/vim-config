execute pathogen#infect('bundle{}', '~/src/vim/bundle/{}')
syntax on
filetype plugin indent on
set term=screen-256color
set encoding=utf-8
set fileencoding=utf-8
set eb
set incsearch
set showcmd
set omnifunc=csscomplete#CompleteCSS
set noswapfile
set nopaste
set number
set numberwidth=2
set expandtab

" default indentions
set shiftwidth=4
set softtabstop=4
set tabstop=4

" html rb files
autocmd Filetype php setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype ruby setlocal ts=4 sw=4 sts=0 expandtab

syn on
set mouse=a
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
filetype on
set tabpagemax=25
set smartindent
set showmatch
set vb t_vb=
set ruler
set incsearch
set nocompatible
set wildmenu
highlight LineNr ctermfg=grey ctermbg=white
au BufRead,BufNewFile *.php set ft=php.html
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:user_emmet_mode='inv'
let g:user_emmet_leader_key='<C-Z>'
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

""""""""""""""""""""
"
"""""""""""""""""""
let g:tmuxline_powerline_separators = 0
let g:tmuxline_theme = 'wombat'
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : '#(date)',
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}
hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow
syntax enable
set background=dark
colorscheme monokai-soda

"""
" Emmet
"""
let g:user_emmet_leader_key='<C-c>'


""""
" Ctrl+P
""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f' 


"""""
" airline
"""""
let g:airline#extensions#tabline#enabled = 1


"""""
"
" Vim Lightline
"""""
set laststatus=2
if !has('gui_running')
      set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'papercolor',
      \ 'component': {
      \     'readonly': '%{&readonly?"x":""}',
      \     'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}' 
      \ },
      \ 'component_visible_condition': {
      \     'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())' 
      \ },
      \ }

"""""
"
""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["php", "html"] }

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"
"
let g:mucomplete#enable_auto_at_startup = 1
