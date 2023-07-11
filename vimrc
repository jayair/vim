" Load plugins in .vim/plugins/start
packloadall

colorscheme nord

" fzf
set rtp+=/opt/homebrew/opt/fzf
nmap <C-P> :FZF<CR>

" Font
set guifont=SF\ Mono:h12

" Split navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Backups
set nobackup
set nowritebackup
set directory=~/.vim/swap//

" Editing
set ai
syn on

" Search
set scs
set ic
set hlsearch
set incsearch

" Error bells
set belloff=all

" Status bar
if has("gui_running")
  set ruler
  set nu
endif

" Spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Prettier format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" coc.vim helpers
" https://github.com/neoclide/coc.nvim#example-vim-configuration

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300
if has("gui_running")
  " Always show the signcolumn, otherwise it would shift the text each time
  " diagnostics appear/become resolved
  set signcolumn=yes
  " Use <c-space> to trigger completion
  inoremap <silent><expr> <c-space> coc#refresh()
endif
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
" Remap <C-f> and <C-b> to scroll float windows/popups
if has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
