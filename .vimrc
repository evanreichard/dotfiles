set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chrisbra/csv.vim'
Plugin 'dracula/vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'psf/black'
call vundle#end()

" Highlight IP Addresses
syn match ipaddr /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
hi link ipaddr Identifier

" Theme
" color dracula

" Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = "fancy"

" Turn syntax highlighting on
syntax on
" filetype off
filetype plugin indent on
" No line wrapping
set nowrap
" Line numbers
set nu
" Highlights searches (done by forward slash in normal mode)
set hlsearch
" Make backspace act normal
set backspace=2
" Disable swap files (no recovery if you dont save!)
set noswapfile
" Set tab = 4 spaces
set tabstop=4
" Addects >> << ++ and automatic indentation
set shiftwidth=4
" Sets the tab key to softtabstop / tabstop
set expandtab
" synchronize with system clipboard (yank and paste in normal is effectively
" CMD+C & CMD+V in insert mode
set clipboard=unnamed

" Folding rules
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set nofoldenable

" CSV Settings
let g:csv_autocmd_arrange	   = 1
let g:csv_autocmd_arrange_size = 1024*1024*10
let b:csv_arrange_align = 'l*'

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_chgwin = 2

let g:netrw_browse_split = 3
" remap shift-enter to fire up the sidebar
" the same remap as above - may be necessary in some distros
nnoremap <silent> <C-M> :leftabove 25vs<CR>:e .<CR>

" View *.hex files in hex
au BufReadPost *.hex silent %!xxd
