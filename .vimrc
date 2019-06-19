" Sane VIM settings for Frontend Web Development

" _PLUGINS_________________________________________
call plug#begin('~/.vim/plugged')
Plug 'haishanh/night-owl.vim'

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
call plug#end()

" _SETTINGS_________________________________________
set background=dark
syntax on
colorscheme night-owl
set relativenumber
set ruler
set laststatus=2
set suffixesadd+=.js
set ignorecase
set smartcase

" _WHITESPACE_______________________________________
set wrap
set textwidth=79
set formatoptions+=rn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noshiftround
set listchars=tab:→\ ,eol:¬,nbsp:·,space:·,trail:·
set list
set showbreak=↪\  
