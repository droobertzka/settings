" Sane VIM settings for Frontend Web Development

set shell=/bin/sh


" _PLUGINS_________________________________________

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-surround'
Plug 'mhartington/oceanic-next'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'neovimhaskell/haskell-vim'
"Plug 'vim-syntastic/syntastic'
"Plug 'Chiel92/vim-autoformat'
"Plug 'xojs/vim-xo'
"Plug 'haishanh/night-owl.vim'
"Plug 'vim-scripts/AutoComplPop'
call plug#end()


" _BASIC SETTINGS___________________________________

let mapleader=","
let localmapleader=","

set number relativenumber
set ruler
set laststatus=2
set suffixesadd+=.js
set ignorecase
set smartcase
set updatetime=100
set backspace=indent,eol,start
set splitright
set cursorline


" _FROM COC RECOMENDATIONS__________________________

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"set signcolumn=number " merge signcolumn and number column into one
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Using Neoformat instead
"augroup mygroup
  "autocmd!
  " Setup formatexpr specified filetype(s).
  "autocmd FileType haskell setlocal formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  "autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Using Neoformat instead
" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocAction('format')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Mappings for CoCList

" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>

" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>

" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" Neoformat
let g:neoformat_enabled_haskell = ['brittany']
let g:neoformat_only_msg_on_error = 1
" To debug formatting issues, uncomment this line
"let g:neoformat_verbose = 1 

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup end


" _THEME/SYNTAX_____________________________________

syntax enable
if (has("termguicolors"))
	set termguicolors
endif
colorscheme OceanicNext
syntax on
filetype plugin on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
set statusline+=%#warningmsg#
"
"set background=dark
"syntax on
"colorscheme night-owl
"set statusline+=%{SyntasticStatuslineFlag()}

" JavaScript & XO
"let g:syntastic_javascript_checkers = ['xo']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" haskell-vim
" disable indentation
let g:haskell_indent_disable = 1

" to enable highlighting of `forall`
let g:haskell_enable_quantification = 1

" to enable highlighting of `mdo` and `rec`
let g:haskell_enable_recursivedo = 1

" to enable highlighting of `proc`
let g:haskell_enable_arrowsyntax = 1

" to enable highlighting of `pattern`
let g:haskell_enable_pattern_synonyms = 1

" to enable highlighting of type roles
let g:haskell_enable_typeroles = 1

" to enable highlighting of `static`
let g:haskell_enable_static_pointers = 1

" to enable highlighting of backpack keywords
let g:haskell_backpack = 1


" _AUTO COMMANDS____________________________________

" Using Neoformat instead
"autocmd BufReadPre,BufWritePre *.js Autoformat
autocmd BufWritePost .vimrc so ~/.vimrc
autocmd FileType haskell setlocal expandtab


" _WHITESPACE_______________________________________
set wrap
set textwidth=79
set formatoptions+=rn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noshiftround
set listchars=tab:→\ ,trail:·
set list
set showbreak=↪\
" Removed spaces & EOL chars since they screw up copy/paste
"set listchars=tab:→\ ,eol:¬,nbsp:·,space:·,trail:·


" _AUTOCOMPLETE____________________________________

" TODO: kspell doesn't seem to work. Supposed to allow dictionary
" word lookup on ctrl+P
set complete=kspell
set completeopt=menuone,longest
set shortmess+=c


" _MAPPINGS________________________________________

" open vimrc for editing
map <leader>v :vsplit ~/.vimrc<cr>


" __Unused Themes__________________________________

" Plug 'https://github.com/flrnprz/taffy.vim.git'
" Plug 'flrnprz/plastic'
" Plug 'liuchengxu/space-vim-theme'
" Plug 'yous/vim-open-color'
" Plug 'sainnhe/vim-color-forest-night'
" Plug 'connorholyday/vim-snazzy'
" Plug 'BrainDeath0/Hypsteria'
" Plug 'https://github.com/skreek/skeletor.vim.git'
" Plug 'https://github.com/Jimeno0/vim-chito.git'
" Plug 'https://github.com/kaicataldo/material.vim.git'
" Plug 'https://github.com/miconda/lucariox.vim.git'
" Plug 'lmintmate/blue-mood-vim'
" Plug 'HenryNewcomer/vim-theme-papaya'
" Plug 'https://github.com/wimstefan/vim-artesanal.git'
" Plug 'https://github.com/Alvarocz/vim-northpole.git'
" Plug 'https://github.com/lowentwickler/dotfiles.git'
" Plug 'https://github.com/Dru89/vim-adventurous.git'
" Plug 'nightsense/seagrey'
" Plug 'nightsense/forgotten'
" Plug 'nightsense/snow'
" Plug 'nightsense/vrunchbang'
" Plug 'nightsense/nemo'
" Plug 'nightsense/plumber'
" Plug 'nightsense/wonka'
" Plug 'https://github.com/dim13/smyck.vim'
" Plug 'https://github.com/baines/vim-colorscheme-thaumaturge'
" Plug 'https://github.com/elmindreda/vimcolors'
" Plug 'https://github.com/yuttie/hydrangea-vim'
" Plug 'kadekillary/Turtles'
" Plug 'hzchirs/vim-material'
" Plug 'https://gitlab.com/iKarith/tigrana.git'
" Plug 'https://github.com/lifepillar/vim-wwdc17-theme'

